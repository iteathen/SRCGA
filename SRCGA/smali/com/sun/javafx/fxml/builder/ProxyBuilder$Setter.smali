.class Lcom/sun/javafx/fxml/builder/ProxyBuilder$Setter;
.super Lcom/sun/javafx/fxml/builder/ProxyBuilder$Property;
.source "ProxyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/fxml/builder/ProxyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Setter"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 529
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder$Setter;
    move-object v1, p1

    .local v1, "m":Ljava/lang/reflect/Method;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/fxml/builder/ProxyBuilder$Property;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    .line 530
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder$Setter;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "argStr":Ljava/lang/Object;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/fxml/builder/ProxyBuilder$Setter;->type:Ljava/lang/Class;

    invoke-static {v7, v8}, Lcom/sun/javafx/fxml/BeanAdapter;->coerce(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v3, v4

    .line 534
    .local v3, "arg":[Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/fxml/builder/ProxyBuilder$Setter;->method:Ljava/lang/reflect/Method;

    move-object v5, v1

    move-object v6, v3

    invoke-static {v4, v5, v6}, Lsun/reflect/misc/MethodUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 535
    return-void
.end method
