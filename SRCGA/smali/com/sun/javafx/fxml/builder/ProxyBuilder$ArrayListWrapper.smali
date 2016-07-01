.class Lcom/sun/javafx/fxml/builder/ProxyBuilder$ArrayListWrapper;
.super Ljava/util/ArrayList;
.source "ProxyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/fxml/builder/ProxyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayListWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder$ArrayListWrapper;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder$ArrayListWrapper<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/fxml/builder/ProxyBuilder$1;)V
    .locals 3

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder$ArrayListWrapper;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder$ArrayListWrapper<TT;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/fxml/builder/ProxyBuilder$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/fxml/builder/ProxyBuilder$ArrayListWrapper;-><init>()V

    return-void
.end method
