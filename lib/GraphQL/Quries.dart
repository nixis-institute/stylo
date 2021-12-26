String getTokenQuery = """
mutation x(\$username:String!,\$password:String!){
  tokenAuth(username:\$username,password:\$password){
    token
  }
}
""";

String getProductsQuery = """
{
  allProducts{
    edges{
      node{
        id
        name
        listPrice
        mrp
        productSize
        productimagesSet{
          edges{
            node{
              normalImage
            }
          }
        }
      }
    }
  }
}

""";
String getCategory = """
{
  allCategory{
    edges{
      node{
        id
        name
        image
        productSize
      }
    }
  }
}
""";
