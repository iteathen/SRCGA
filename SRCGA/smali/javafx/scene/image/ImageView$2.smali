.class Ljavafx/scene/image/ImageView$2;
.super Ljavafx/css/StyleableStringProperty;
.source "ImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/image/ImageView;->imageUrlProperty()Ljavafx/beans/property/StringProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/image/ImageView;


# direct methods
.method constructor <init>(Ljavafx/scene/image/ImageView;)V
    .locals 4

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/image/ImageView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/image/ImageView$2;->this$0:Ljavafx/scene/image/ImageView;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/css/StyleableStringProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView$2;->this$0:Ljavafx/scene/image/ImageView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/ImageView$2;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/image/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView$2;
    # getter for: Ljavafx/scene/image/ImageView$StyleableProperties;->IMAGE:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/image/ImageView$StyleableProperties;->access$500()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/ImageView$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView$2;
    const-string v1, "imageUrl"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/ImageView$2;
    return-object v0
.end method

.method protected invalidated()V
    .locals 5

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView$2;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/image/ImageView$2;->get()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 256
    .local v1, "imageUrl":Ljava/lang/String;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 257
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/image/ImageView$2;->this$0:Ljavafx/scene/image/ImageView;

    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getInstance()Lcom/sun/javafx/css/StyleManager;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/css/StyleManager;->getCachedImage(Ljava/lang/String;)Ljavafx/scene/image/Image;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/image/ImageView;->setImage(Ljavafx/scene/image/Image;)V

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/image/ImageView$2;->this$0:Ljavafx/scene/image/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/image/ImageView;->setImage(Ljavafx/scene/image/Image;)V

    goto :goto_0
.end method
