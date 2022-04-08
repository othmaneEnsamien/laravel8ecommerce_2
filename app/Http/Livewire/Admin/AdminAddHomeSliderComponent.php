<?php

namespace App\Http\Livewire\Admin;

use Carbon\Carbon;
use Livewire\Component;
use App\Models\HomeSlider;

use Livewire\WithFileUploads;

class AdminAddHomeSliderComponent extends Component
{
    use WithFileUploads;
    public $title;
    public $subtitle;
    public $price;
    public $image;
    public $status;
    public $link;

    public function mount()
    {
        $this->status = 0;
    }
    public function updated($fields)
    {
        $this->validateOnly($fields, [
            'title' => 'required',
            'subtitle' => 'required',
            'price' => 'required',
            'link' => 'required',
            'image' => 'required|mimes:jpeg,png,jpg',


        ]);
    }

    public function addSlider()
    {
        $this->validate([
            'title' => 'required',
            'subtitle' => 'required',
            'price' => 'required',
            'link' => 'required',
            'image' => 'required|mimes:jpeg,png,jpg',

        ]);
        $slider = new HomeSlider();
        $slider->title = $this->title;
        $slider->subtitle = $this->subtitle;
        $slider->price = $this->price;
        $slider->link = $this->link;
        $imagename = Carbon::now()->timestamp . '.' . $this->image->extension();
        $this->image->storeAs('sliders', $imagename);
        $slider->image = $imagename;
        $slider->status = $this->status;
        $slider->save();
        session()->flash('message', 'slider hs been stored successfully');
    }

    public function render()
    {
        return view('livewire.admin.admin-add-home-slider-component')->layout('layouts.base');
    }
}
