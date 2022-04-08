<?php

namespace App\Http\Livewire;

use App\Models\Contact;
use App\Models\Setting;
use Livewire\Component;

class ContactComponent extends Component
{
    public $name;
    public $email;
    public $mobile;
    public $comment;
    public function updated($fields)
    {
        $this->validateOnly($fields, [
            'name' => 'required',
            'email' => 'required|email',
            'mobile' => 'required',
            'comment' => 'required'
        ]);
    }
    public function SendContact()
    {
        $this->validate([
            'name' => 'required',
            'email' => 'required|email',
            'mobile' => 'required',
            'comment' => 'required'
        ]);
        $contact = new Contact();
        $contact->name = $this->name;
        $contact->email = $this->email;
        $contact->mobile = $this->mobile;
        $contact->comment = $this->comment;
        $contact->save();
        session()->flash('contact_message', 'Thanks,Your message has been sent succesfully');
    }
    public function render()
    {
        $setting = Setting::find(1);
        return view('livewire.contact-component', compact('setting'))->layout("layouts.base");
    }
}
