<script setup lang="ts">
import { Head } from '@inertiajs/vue3';
import '@resources/css/font.css';

import { onMounted, onUnmounted, ref } from 'vue';

/* import the fontawesome core */
import { library } from '@fortawesome/fontawesome-svg-core';

/* import font awesome icon component */
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome';

/* import specific icons */
import { faChevronDown, faUserSecret, faXmark } from '@fortawesome/free-solid-svg-icons';

/* Add icons to the library */
library.add(faUserSecret, faXmark, faChevronDown);

const selectedImage = ref('');
const showModal = ref(false);

const openImage = (imagePath: string) => {
    selectedImage.value = imagePath;
    showModal.value = true;
};

const closeModal = () => {
    showModal.value = false;
};

const handleKeydown = (event: KeyboardEvent) => {
    if (event.key === 'Escape') closeModal();
};

onMounted(() => {
    window.addEventListener('keydown', handleKeydown);
});

onUnmounted(() => {
    window.removeEventListener('keydown', handleKeydown);
});

const activeFAQ = ref(null); // Track active question
const faqs = ref([
    {
        question: 'ساعات کاری رستوران به چه صورت می‌باشد؟',
        answer: 'ساعات کاری رستوران همه روزه:\nساعت 11:30 الی 15:30 (سانس ناهار)\nساعت 16:00 الی 18:00 (سانس عصرانه)\nساعت 18:30 الی 23:30 (سانس شام)',
    },
    {
        question: 'آوردن حیوانات خانگی (مانند گربه، سگ و...) به رستوران ممنوع است؟',
        answer: 'بله، به دلیل رعایت اصول بهداشتی ورود حیوانات خانگی ممنوع است.',
    },
    {
        question: 'استعمال دخانیات (سیگار، قلیان و...) مجاز است؟',
        answer: 'خیر، استعمال دخانیات در فضای رستوران مجاز نمی‌باشد.',
    },
    {
        question: 'آیا آوردن مواد غذایی یا نوشیدنی به داخل رستوران مشکلی دارد؟',
        answer: 'لطفاً از آوردن مواد غذایی و نوشیدنی‌های خارج از مجموعه خودداری کنید.',
    },
    {
        question: 'آیا برای استفاده از مجموعه از قبل حتماً رزرو کرده باشیم؟',
        answer: 'بله، برای اطمینان از وجود ظرفیت، لطفاً از قبل رزرو کنید.',
    },
]);

const handleButtons = (type: string) => {
    switch (type) {
        case 'neshan':
            window.open('https://nshn.ir/81rbS20aGBUQhJ', '_blank');
            break;
        case 'balad':
            window.open('https://balad.ir/p/4vivW6rbgyEtMg', '_blank');
            break;
        case 'google':
            window.open('https://maps.app.goo.gl/GwbRWxgVZ42G3ZxTA', '_blank');
            break;
        case 'phone1':
            window.open(`tel:09134445236`);
            break;
        case 'phone2':
            window.open(`tel:09134445237`);
            break;
        case 'phone3':
            window.open(`tel:09134445238`);
            break;
        case 'instagram':
            window.open(`https://www.instagram.com/bagghmorvarid?igsh=eGNxaTVpYXhnbjk1`, '_blank');
            break;
        case 'whatsapp':
            window.open(
                `https://api.whatsapp.com/send?phone=989134445236&text=%D8%A8%D8%A7%20%D8%B3%D9%84%D8%A7%D9%85%20%D9%88%20%D9%88%D9%82%D8%AA%20%D8%A8%D8%AE%DB%8C%D8%B1%20%D8%AC%D9%87%D8%AA%20%DA%A9%D8%B3%D8%A8%20%D8%A7%D8%B7%D9%84%D8%A7%D8%B9%D8%A7%D8%AA%20%D8%A8%DB%8C%D8%B4%D8%AA%D8%B1%20%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87%20%D9%85%D8%AC%D9%85%D9%88%D8%B9%D9%87%20%D8%B4%D9%85%D8%A7%20%D9%88%20%D8%AC%D9%87%D8%AA%20%D9%87%D9%85%D8%A7%D9%87%D9%86%DA%AF%DB%8C%20%D8%A8%D8%B1%D8%A7%DB%8C%20%D8%B1%D8%B2%D8%B1%D9%88%20%D8%B1%D8%A7%D9%87%D9%86%D9%85%D8%A7%DB%8C%DB%8C%20%D9%84%D8%A7%D8%B2%D9%85%20%D8%B1%D8%A7%20%D8%A7%D9%86%D8%AC%D8%A7%D9%85%20%D8%AF%D9%87%DB%8C%D8%AF`,
                '_blank',
            );
            break;
        case 'telegram':
            window.open(`https://t.me/+989134445236`, '_blank');
            break;
    }
};
</script>

<template>
    <Head title="Landing" />
    <div class="flex min-h-screen flex-col items-center bg-cover bg-center p-6" dir="rtl">
        <video class="center fixed inset-0 h-full w-full object-cover" autoplay muted loop playsinline>
            <source src="/videos/Landing.mp4" type="video/mp4" />
        </video>

        <!-- Add an overlay to ensure text remains readable -->
        <div class="fixed inset-0 bg-black bg-opacity-50"></div>

        <div class="relative z-10 w-full max-w-md rounded-2xl bg-white bg-opacity-60 p-6 text-center shadow-lg">
            <img src="/images/Logo.png" alt="Bagh Morvarid Logo" class="logo-image mx-auto mb-4 w-24" />
            <h1 class="text-xl font-bold text-gray-800">باغ رستوران مروارید</h1>
            <p class="mb-4 text-gray-600">محیط دلنشین و آرامش‌بخش</p>

            <h2 class="mb-2 text-lg font-semibold text-gray-700">منو دیجیتال</h2>
            <div class="space-y-3">
                <button class="flex w-full items-center justify-center rounded-lg bg-blue-400 py-2 text-white shadow-md">
                    اسنپ فود
                    <span class="ml-2">&#x1F517;</span>
                </button>
                <button class="flex w-full items-center justify-center rounded-lg bg-blue-400 py-2 text-white shadow-md">
                    سفارش و منو آنلاین
                    <span class="ml-2">&#x1F517;</span>
                </button>
                <button class="flex w-full items-center justify-center rounded-lg bg-blue-400 py-2 text-white shadow-md">
                    نظرسنجی
                    <span class="ml-2">&#x1F4AC;</span>
                </button>
            </div>

            <h2 class="mb-2 mt-6 text-lg font-semibold text-gray-700">آدرس و مسیریابی</h2>
            <div class="space-y-3">
                <button
                    @click="handleButtons('neshan')"
                    class="flex w-full items-center justify-center rounded-lg bg-gray-300 py-2 text-gray-800 shadow-md"
                >
                    مسیر‌یاب نشان
                    <span class="ml-2">📍</span>
                </button>
                <button
                    @click="handleButtons('balad')"
                    class="flex w-full items-center justify-center rounded-lg bg-gray-300 py-2 text-gray-800 shadow-md"
                >
                    مسیریاب بلد
                    <span class="ml-2">📍</span>
                </button>
                <button
                    @click="handleButtons('google')"
                    class="flex w-full items-center justify-center rounded-lg bg-gray-300 py-2 text-gray-800 shadow-md"
                >
                    مسیریاب گوگل
                    <span class="ml-2">📍</span>
                </button>
            </div>

            <h2 class="mb-2 mt-6 text-lg font-semibold text-gray-700">شماره های تماس</h2>
            <div class="space-y-3">
                <button
                    @click="handleButtons('phone1')"
                    class="flex w-full items-center justify-center rounded-lg bg-gray-300 py-2 text-gray-800 shadow-md"
                >
                    09134445236
                    <span class="ml-2">📍</span>
                </button>
                <button
                    @click="handleButtons('phone2')"
                    class="flex w-full items-center justify-center rounded-lg bg-gray-300 py-2 text-gray-800 shadow-md"
                >
                    09134445237
                    <span class="ml-2">📍</span>
                </button>
                <button
                    @click="handleButtons('phone3')"
                    class="flex w-full items-center justify-center rounded-lg bg-gray-300 py-2 text-gray-800 shadow-md"
                >
                    09134445238
                    <span class="ml-2">📍</span>
                </button>
            </div>

            <h2 class="mb-2 mt-6 text-lg font-semibold text-gray-700">راه های ارتباطی</h2>
            <div class="space-y-3">
                <button
                    @click="handleButtons('instagram')"
                    class="flex w-full items-center justify-center rounded-lg bg-gray-300 py-2 text-gray-800 shadow-md"
                >
                    اینستاگرام
                    <span class="ml-2">📍</span>
                </button>
                <button
                    @click="handleButtons('whatsapp')"
                    class="flex w-full items-center justify-center rounded-lg bg-gray-300 py-2 text-gray-800 shadow-md"
                >
                    واتس اپ
                    <span class="ml-2">📍</span>
                </button>
                <button
                    @click="handleButtons('telegram')"
                    class="flex w-full items-center justify-center rounded-lg bg-gray-300 py-2 text-gray-800 shadow-md"
                >
                    تلگرام
                    <span class="ml-2">📍</span>
                </button>
            </div>

            <h2 class="mb-4 text-lg font-semibold text-gray-700">گالری تصاویر</h2>
            <div class="overflow-hidden">
                <div class="photo-scroll animate-scroll flex gap-4">
                    <div class="photo-track">
                        <img
                            v-for="(_, index) in 4"
                            :key="index"
                            :src="`/images/gallery/${index + 1}.jpg`"
                            :alt="`Gallery ${index + 1}`"
                            class="h-48 w-72 cursor-pointer rounded-lg object-cover transition-transform hover:scale-105"
                            loading="lazy"
                            @click="openImage(`/images/gallery/${index + 1}.jpg`)"
                        />
                        <!-- Duplicate images for seamless scrolling -->
                        <img
                            v-for="(_, index) in 4"
                            :key="`dup-${index}`"
                            :src="`/images/gallery/${index + 1}.jpg`"
                            :alt="`Gallery ${index + 1}`"
                            class="h-48 w-72 cursor-pointer rounded-lg object-cover transition-transform hover:scale-105"
                            @click="openImage(`/images/gallery/${index + 1}.jpg`)"
                        />
                    </div>
                </div>
            </div>

            <h2 class="mb-2 mt-6 text-lg font-semibold text-gray-700">سوالات متدوال</h2>
            <div v-for="(faq, index) in faqs" :key="index" class="mb-2">
                <button
                    @click="activeFAQ = activeFAQ === index ? null : index"
                    class="w-full rounded-lg bg-blue-400 p-3 text-center text-white transition-all duration-300"
                    :class="{ 'rounded-b-none': activeFAQ === index }"
                >
                    <div class="flex items-center justify-between">
                        <span>{{ faq.question }}</span>
                        <font-awesome-icon
                            :icon="['fas', 'chevron-down']"
                            :class="{ 'rotate-180': activeFAQ === index }"
                            class="transition-transform duration-300"
                        />
                    </div>
                </button>

                <div
                    :class="['faq-answer', { 'faq-answer-active': activeFAQ === index }]"
                    class="overflow-hidden rounded-b-lg bg-blue-300 text-black transition-all duration-500"
                >
                    <div class="p-3">{{ faq.answer }}</div>
                </div>
            </div>
        </div>
    </div>

    <!-- Image Modal -->
    <div v-if="showModal" class="fixed inset-0 z-50 flex items-center justify-center bg-black bg-opacity-75 p-4" @click="closeModal">
        <div class="relative max-h-[90vh] max-w-[90vw]">
            <img :src="selectedImage" class="max-h-[90vh] max-w-[90vw] object-contain" @click.stop />
            <button
                @click="closeModal"
                class="absolute -right-4 -top-4 flex h-8 w-8 items-center justify-center rounded-full bg-white text-black hover:bg-gray-200"
            >
                <font-awesome-icon :icon="['fas', 'xmark']" />
            </button>
        </div>
    </div>
</template>

<style scoped>
div {
    font-family: 'Vazir-Bold-FD';
}
button {
    transition: transform 0.2s ease-in-out;
}
button:active {
    transform: scale(0.95);
}
.photo-scroll {
    overflow: visible;
    white-space: nowrap;
    display: flex;
    align-items: center;
    width: 100%;
    position: relative;
    mask-image: linear-gradient(to right, transparent, black 10%, black 90%, transparent);
    -webkit-mask-image: linear-gradient(to right, transparent, black 10%, black 90%, transparent);
}

/* Track that holds all images */
.photo-track {
    display: flex;
    gap: 10px; /* Adjust spacing between images */
    animation: scroll 20s linear infinite;
}

/* Ensure images are the right size */
.photo-track img {
    max-width: 100px; /* Adjust based on your layout */
    height: auto;
    flex-shrink: 0;
    z-index: 1;
}

@keyframes scroll {
    from {
        transform: translateX(0);
    }
    to {
        transform: translateX(+50%);
    }
}

/* Pause on hover */
.photo-scroll:hover .photo-track {
    animation-play-state: paused;
}

.cursor-pointer {
    cursor: pointer;
}

.transition-transform {
    transition: transform 0.2s ease-in-out;
}

.hover\:scale-105:hover {
    transform: scale(1.05);
}
.relative {
    position: relative;
}
.flex {
    display: flex;
}
.transition-transform {
    transition: transform 0.5s ease-in-out;
}
button {
    cursor: pointer;
}

.faq-answer {
    max-height: 0;
    opacity: 0;
    transition:
        max-height 0.5s ease,
        opacity 0.5s ease;
}

.faq-answer-active {
    max-height: 200px; /* Adjust based on your content */
    opacity: 1;
}
</style>
