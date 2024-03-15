/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author ACER
 */
public class Coffee {
    
     private String size;
    private String type;
    private boolean milk;
    private boolean sugar;
    private boolean whippedCream;

    // Private constructor to enforce the use of the builder
    private Coffee(Builder builder) {
        this.size = builder.size;
        this.type = builder.type;
        this.milk = builder.milk;
        this.sugar = builder.sugar;
        this.whippedCream = builder.whippedCream;
    }

    public String getSize() {
        return size;
    }

    public String getType() {
        return type;
    }

    public boolean isMilk() {
        return milk;
    }

    public boolean isSugar() {
        return sugar;
    }

    public boolean isWhippedCream() {
        return whippedCream;
    }

   

    // Builder class to construct the coffee order
    public static class Builder {
        private String size;
        private String type;
        private boolean milk;
        private boolean sugar;
        private boolean whippedCream;

        public Builder(String size, String type) {
            this.size = size;
            this.type = type;
        }

        public Builder milk(boolean milk) {
            this.milk = milk;
            return this;
        }

        public Builder sugar(boolean sugar) {
            this.sugar = sugar;
            return this;
        }

        public Builder whippedCream(boolean whippedCream) {
            this.whippedCream = whippedCream;
            return this;
        }

        public Coffee build() {
            return new Coffee(this);
        }
    }
    
}
