[RUS]

[![Swift](https://img.shields.io/badge/Swift-5.0-orange)](https://swift.org) [![iOS](https://img.shields.io/badge/iOS-13.0+-blue)](https://apple.com)

# ByteCoin

Приложение для просмотра курса Bitcoin. Выбор валюты и отображение текущей цены.

## Функционал

- Выбор валюты из 21 варианта (USD, EUR, RUB, GBP, CNY, JPY и др.)
- Отображение текущей цены Bitcoin в выбранной валюте
- Автоматическое обновление цены при выборе валюты
- Форматирование цены до 2 знаков после запятой
- Поддержка светлой и темной темы
- Обработка ошибок сети

## Технологии

Swift, UIKit, UIPickerView, URLSession, JSONDecoder, MVC, Delegation Pattern

## Реализация

- `CoinManager` — сетевые запросы к CoinGecko API, делегат для передачи данных
- `CoinData` — Codable структура для парсинга JSON
- `ViewController` — расширения для UIPickerView и CoinManagerDelegate
- `DispatchQueue.main.async` — обновление UI в главном потоке

## Курс

The App Brewery — iOS Development Bootcamp

## Авторские права

Оригинальный дизайн — The App Brewery (Angela Yu)  
Код реализован Ариной Агафоновой в учебных целях

## Скриншоты

| Светлая тема | Темная тема |
|--------------|-------------|
| ![Light theme ](https://github.com/user-attachments/assets/3ed5d87a-6b64-46bb-b1d9-1d5e6996e3ed) | ![Dark theme ](https://github.com/user-attachments/assets/3eb02370-0931-47cb-94c5-95423bd62ec6) |

---

[ENG]

[![Swift](https://img.shields.io/badge/Swift-5.0-orange)](https://swift.org) [![iOS](https://img.shields.io/badge/iOS-13.0+-blue)](https://apple.com)

# ByteCoin

Bitcoin price tracker app. Select currency and view current price.

## Features

- Select currency from 21 options (USD, EUR, RUB, GBP, CNY, JPY, etc.)
- Display current Bitcoin price in selected currency
- Auto-update price on currency selection
- Price formatting to 2 decimal places
- Light and dark theme support
- Network error handling

## Technologies

Swift, UIKit, UIPickerView, URLSession, JSONDecoder, MVC, Delegation Pattern

## Implementation

- `CoinManager` — network requests to CoinGecko API, delegate for data transfer
- `CoinData` — Codable struct for JSON parsing
- `ViewController` — extensions for UIPickerView and CoinManagerDelegate
- `DispatchQueue.main.async` — UI updates on main thread

## Course

The App Brewery — iOS Development Bootcamp

## Copyright

Original design — The App Brewery (Angela Yu)  
Code implemented by Arina Agafonova for educational purposes

## Screenshots

| Light theme | Dark theme |
|-------------|------------|
| ![Light theme ](https://github.com/user-attachments/assets/3ed5d87a-6b64-46bb-b1d9-1d5e6996e3ed) | ![Dark theme ](https://github.com/user-attachments/assets/3eb02370-0931-47cb-94c5-95423bd62ec6) |
