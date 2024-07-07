package Service;

import Dal.ProductDB;
import Model.Product;

import java.util.List;
import java.util.stream.Collectors;

public class FilterProduct {

    // Filter products by price range
    public List<Product> filterByPriceRange(List<Product> productList, double minPrice, double maxPrice) {
        return productList.stream()
                .filter(product -> product.getPrice() >= minPrice && product.getPrice() <= maxPrice)
                .collect(Collectors.toList());
    }

    // Filter products by category
    public List<Product> filterByCategory(List<Product> productList, String category) {
        return productList.stream()
                .filter(product -> product.getCategories().equalsIgnoreCase(category))
                .collect(Collectors.toList());
    }

    // Filter products by color
    public List<Product> filterByColor(List<Product> productList, String color) {
        return productList.stream()
                .filter(product -> product.getColor().equalsIgnoreCase(color))
                .collect(Collectors.toList());
    }

    // Sort products by price in ascending order
    public List<Product> sortByPriceAscending(List<Product> productList) {
        return productList.stream()
                .sorted((p1, p2) -> Double.compare(p1.getPrice(), p2.getPrice()))
                .collect(Collectors.toList());
    }

    // Sort products by price in descending order
    public List<Product> sortByPriceDescending(List<Product> productList) {
        return productList.stream()
                .sorted((p1, p2) -> Double.compare(p2.getPrice(), p1.getPrice()))
                .collect(Collectors.toList());
    }

    public static void main(String[] args) {
        // Example usage and testing
        ProductDB productDB = new ProductDB();
        List<Product> productList = productDB.getAllProduct();

        FilterProduct filterProduct = new FilterProduct();

        // Filtering by price ranges
        double[][] priceRanges = {
            {0.00, 50.00},
            {50.00, 100.00},
            {100.00, 150.00},
            {150.00, 200.00},
            {200.00, Double.MAX_VALUE}
        };

        for (double[] range : priceRanges) {
            List<Product> filteredByPriceRange = filterProduct.filterByPriceRange(productList, range[0], range[1]);
            System.out.println(String.format("Products in price range $%.2f - $%.2f:", range[0], range[1]));
            filteredByPriceRange.forEach(System.out::println);
            System.out.println(); // Line break for clarity
        }

        // Filtering by category
        List<Product> filteredByCategory = filterProduct.filterByCategory(productList, "Category 1");
        System.out.println("\nProducts in Category 1:");
        filteredByCategory.forEach(System.out::println);

        // Filtering by colors
        String[] colors = {"Black", "Blue", "Grey", "Green", "Red", "White"};
        for (String color : colors) {
            List<Product> filteredByColor = filterProduct.filterByColor(productList, color);
            System.out.println("\nProducts in " + color + " color:");
            filteredByColor.forEach(System.out::println);
            System.out.println(); // Line break for clarity
        }

        // Sorting by price ascending
        List<Product> sortedByPriceAsc = filterProduct.sortByPriceAscending(productList);
        System.out.println("\nProducts sorted by price (ascending):");
        sortedByPriceAsc.forEach(System.out::println);

        // Sorting by price descending
        List<Product> sortedByPriceDesc = filterProduct.sortByPriceDescending(productList);
        System.out.println("\nProducts sorted by price (descending):");
        sortedByPriceDesc.forEach(System.out::println);
    }
}
