<?php

use App\Http\Livewire\CartComponent;
use App\Http\Livewire\HomeComponent;
use App\Http\Livewire\ShopComponent;
use App\Http\Livewire\AboutComponent;
use Illuminate\Support\Facades\Route;
use App\Http\Livewire\SearchComponent;
use App\Http\Livewire\ContactComponent;
use App\Http\Livewire\DetailsComponent;
use App\Http\Livewire\CategoryComponent;
use App\Http\Livewire\CheckoutComponent;
use App\Http\Livewire\ThankyouComponent;
use App\Http\Livewire\WishlistComponent;
use App\Http\Livewire\User\UserOrderComponent;
use App\Http\Livewire\Admin\AdminSaleComponent;
use App\Http\Livewire\Admin\AdminOrderComponent;
use App\Http\Livewire\User\UserProfileComponent;
use App\Http\Livewire\Admin\AdminContactComponent;
use App\Http\Livewire\Admin\AdminCouponsComponent;
use App\Http\Livewire\Admin\AdminProductComponent;
use App\Http\Livewire\Admin\AdminSettingComponent;
use App\Http\Livewire\User\UserDashboardComponent;
use App\Http\Livewire\Admin\AdminCategoryComponent;
use App\Http\Livewire\Admin\AdminDashboardComponent;
use App\Http\Livewire\User\UserEditProfileComponent;
use App\Http\Livewire\Admin\AdminAddCouponsComponent;
use App\Http\Livewire\Admin\AdminAddProductComponent;
use App\Http\Livewire\Admin\AdminAttributesComponent;
use App\Http\Livewire\Admin\AdminHomeSliderComponent;
use App\Http\Livewire\User\UserOrderDetailsComponent;
use App\Http\Livewire\Admin\AdminAddCategoryComponent;
use App\Http\Livewire\Admin\AdminEditCouponsComponent;
use App\Http\Livewire\Admin\AdminEditProductComponent;
use App\Http\Livewire\Admin\AdminEditCategoryComponent;
use App\Http\Livewire\Admin\AdminHomeCategoryComponent;
use App\Http\Livewire\Admin\AdminOrderDetailsComponent;
use App\Http\Livewire\User\UserChangePasswordComponent;
use App\Http\Livewire\Admin\AdminAddAttributesComponent;
use App\Http\Livewire\Admin\AdminAddHomeSliderComponent;
use App\Http\Livewire\Admin\AdminEditAttributesComponent;
use App\Http\Livewire\Admin\AdminEditHomeSliderComponent;
use App\Http\Livewire\Admin\AdminOrderDetailsHistoryComponent;
use App\Http\Livewire\Admin\OrderHistoryComponent;
use App\Http\Livewire\ProductSoldeComponent;
use App\Http\Livewire\User\UserReviewComponent;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



Route::get('/', HomeComponent::class)->name('home');
Route::get('/shop', ShopComponent::class)->name('shop');
Route::get('/cart', CartComponent::class)->name('product.cart');
Route::get('/checkout', CheckoutComponent::class)->name('checkoutt');
Route::get('/contact', ContactComponent::class);
Route::get('/about', AboutComponent::class);
Route::get('/product/{slug}', DetailsComponent::class)->name('product.details');
Route::get('/product-category/{category_slug}/{scategory_slug?}', CategoryComponent::class)->name('product.category');
Route::get('/product-en-solde/soldes', ProductSoldeComponent::class)->name('product.solde');
Route::get('/search', SearchComponent::class)->name('product.search');
Route::get('/wishlist', WishlistComponent::class)->name('product.wishlist');
Route::get('/thank-you', ThankyouComponent::class)->name('thankyou');
Route::get('/contact', ContactComponent::class)->name('contact');






// Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
//     return view('dashboard');
// })->name('dashboard');



//for User or Customer
Route::middleware(['auth:sanctum', 'verified'])->group(function () {
    Route::get('/user/dashboard', UserDashboardComponent::class)->name('user.dashboard');
    Route::get('/user/orders', UserOrderComponent::class)->name('user.orders');
    Route::get('/user/orders/{order_id}', UserOrderDetailsComponent::class)->name('user.ordersdetails');
    Route::get('/user/change-password', UserChangePasswordComponent::class)->name('user.changePassword');
    Route::get('/user/profile', UserProfileComponent::class)->name('user.profile');
    Route::get('/user/profile/edit', UserEditProfileComponent::class)->name('user.editprofile');
    Route::get('/user/review/{order_item_id}', UserReviewComponent::class)->name('user.review');
});
//for Admin
Route::middleware(['auth:sanctum', 'verified', 'authadmin'])->group(function () {
    Route::get('/admin/dashboard', AdminDashboardComponent::class)->name('admin.dashboard');
    Route::get('admin/category', AdminCategoryComponent::class)->name('admin.categories');
    Route::get('admin/category/add', AdminAddCategoryComponent::class)->name('admin.addcategories');
    Route::get('/admin/category/edit/{category_slug}/{subcategory_slug?}', AdminEditCategoryComponent::class)->name('admin.editcategories');
    Route::get('/admin/products', AdminProductComponent::class)->name('admin.products');
    Route::get('/admin/addproducts', AdminAddProductComponent::class)->name('admin.addproducts');
    Route::get('/admin/editproducts/{product_slug}', AdminEditProductComponent::class)->name('admin.editproducts');
    Route::get('admin/home-categories', AdminHomeCategoryComponent::class)->name('admin.homecategories');

    Route::get('/admin/coupons', AdminCouponsComponent::class)->name('admin.coupons');
    Route::get('/admin/coupons/Add', AdminAddCouponsComponent::class)->name('adminAdd.coupons');
    Route::get('/admin/coupons/Edit/{coupon_id}', AdminEditCouponsComponent::class)->name('adminEdit.coupons');
    Route::get('/admin/sale', AdminSaleComponent::class)->name('admin.sale');
    Route::get('/admin/orders', AdminOrderComponent::class)->name('admin.orders');
    Route::get('/admin/orders/{order_id}', AdminOrderDetailsComponent::class)->name('admin.orderdetails');
    Route::get('admin/contact-us', AdminContactComponent::class)->name('admin.contact');
    Route::get('admin/setting', AdminSettingComponent::class)->name('admin.setting');
    Route::get('admin/attributes', AdminAttributesComponent::class)->name('admin.attributes');
    Route::get('admin/attributes/add', AdminAddAttributesComponent::class)->name('admin.add_attributes');
    Route::get('admin/attributes/edit/{attribute_id}', AdminEditAttributesComponent::class)->name('admin.edit_attributes');
    Route::get('admin/homeslide', AdminHomeSliderComponent::class)->name('admin.homeslider');
    Route::get('/admin/homeslide/add', AdminAddHomeSliderComponent::class)->name('admin.Addhomeslider');
    Route::get('/admin/homeslide/edit/{slide_id}', AdminEditHomeSliderComponent::class)->name('admin.Edithomeslider');
    Route::get('/admin/orders-history', OrderHistoryComponent::class)->name('admin.orderhistory');
    Route::get('/admin/orders-history/{order_id}', AdminOrderDetailsHistoryComponent::class)->name('admin.orderdetailss');
});
