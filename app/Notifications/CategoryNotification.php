<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class CategoryNotification extends Notification
{
    use Queueable;

    protected $categorynama;
    protected $status;


    public function __construct($categorynama,$status)
    {
        $this->categorynama = $categorynama;
        $this->status = $status;

    }

    public function via($notifiable)
    {
        return ['mail'];
    }

    public function toMail($notifiable)
    {
        return (new MailMessage)
        ->line('Kategori ' . $this->categorynama . ' ' . $this->status)
        ->action('Lihat Kategori', url('/categories'))
        ->line('Terima kasih telah menggunakan layanan kami!');
    }

    public function toArray($notifiable)
    {
        return [
            
        ];
    }
}
