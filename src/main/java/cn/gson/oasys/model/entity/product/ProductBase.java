package cn.gson.oasys.model.entity.product;

import lombok.Data;

import javax.annotation.sql.DataSourceDefinition;
import java.util.ArrayList;
import java.util.List;
@Data
public class ProductBase {
    private String name;
    private double price;
    private String description;

    public ProductBase(String name, double price, String description) {
        this.name = name;
        this.price = price;
        this.description = description;
    }

    // Getters and setters

    public static List<ProductBase> getProducts() {
        List<ProductBase> products = new ArrayList<>();
        products.add(new ProductBase("Product 1", 10.99, "Description 1"));
        products.add(new ProductBase("Product 2", 19.99, "Description 2"));
        products.add(new ProductBase("Product 2", 19.99, "Description 2"));
        products.add(new ProductBase("Product 2", 19.99, "Description 2"));
        products.add(new ProductBase("Product 3", 29.99, "Description 3"));
        products.add(new ProductBase("Product 3", 29.99, "Description 3"));
        products.add(new ProductBase("Product 3", 29.99, "Description 3"));
        products.add(new ProductBase("Product 3", 29.99, "Description 3"));
        products.add(new ProductBase("Product 3", 29.99, "Description 3"));
        products.add(new ProductBase("Product 3", 29.99, "Description 3"));
        products.add(new ProductBase("Product 3", 29.99, "Description 3"));
        products.add(new ProductBase("Product 3", 29.99, "Description 3"));
        products.add(new ProductBase("Product 3", 29.99, "Description 3"));
        products.add(new ProductBase("Product 3", 29.99, "Description 3"));
        products.add(new ProductBase("Product 3", 29.99, "Description 3"));
        products.add(new ProductBase("Product 3", 29.99, "Description 3"));
        products.add(new ProductBase("Product 3", 29.99, "Description 3"));
        products.add(new ProductBase("Product 3", 29.99, "Description 3"));
        return products;
    }
}
