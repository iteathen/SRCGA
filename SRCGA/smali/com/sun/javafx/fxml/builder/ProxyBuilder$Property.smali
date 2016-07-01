.class abstract Lcom/sun/javafx/fxml/builder/ProxyBuilder$Property;
.super Ljava/lang/Object;
.source "ProxyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/fxml/builder/ProxyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Property"
.end annotation


# instance fields
.field protected final method:Ljava/lang/reflect/Method;

.field protected final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 514
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder$Property;
    move-object v1, p1

    .local v1, "m":Ljava/lang/reflect/Method;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 515
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/fxml/builder/ProxyBuilder$Property;->method:Ljava/lang/reflect/Method;

    .line 516
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/fxml/builder/ProxyBuilder$Property;->type:Ljava/lang/Class;

    .line 517
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 520
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder$Property;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/fxml/builder/ProxyBuilder$Property;->type:Ljava/lang/Class;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder$Property;
    return-object v0
.end method

.method public abstract invoke(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
