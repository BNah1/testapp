# testapp

A Flutter project demonstrating product listing, searching, pagination (load more), favorites management, and basic error handling.

Getting Started

1. Clone the repository:
git clone https://github.com/BNah1/testapp.git
cd testapp

2. Install dependencies:
flutter pub get

3. Run the app:
flutter run
Ensure you have a connected emulator or physical device.

Features Guide

Searching Products:
- Type a keyword into the search bar (e.g., "a").
- The product list updates automatically after 0.5 seconds (debounce).
- Clear the search field to reset the product list.

Scrolling / Load More (Pagination):
- Type a keyword (e.g., "a") to shorten the product list.
- Scroll vertically to the bottom.
- If there are more products:
  A loading spinner appears for ~1.5s.
  The next 20 products are displayed.
- When all products are shown:
  A toast message appears: "End reached".

Favorites Feature:
Products can be marked or unmarked as favorites.

In ProductView:
- ❤️ Red heart icon: already in favorites.
- 🤍 Outline heart icon: not in favorites.
- Tap the icon to toggle favorite status.

In FavoriteView:
- Displays only favorited products.
- Tap the heart icon to remove from favorites.

Error / Status Handling:

No Internet Connection:
- Disconnect from Wi-Fi or mobile data.
- Try to load or search products.
- UI displays message: "No Internet Connection".

No Data:
- Search with a non-existent keyword (e.g., "aasdasdsa").
- UI displays: "No Data".

End Reached:
- Input a keyword (e.g., "a") to filter results.
- Scroll to the end of the list.
- A toast displays: "End reached the last product".

Other unexpected errors are shown via toast messages or error widgets.
