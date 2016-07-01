.class Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$2;
.super Ljavafx/css/StyleableStringProperty;
.source "ColorPickerSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)V
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/css/StyleableStringProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$2;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$2;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/String;)V

    return-void
.end method

.method public applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$2;
    move-object v1, p1

    .local v1, "origin":Ljavafx/css/StyleOrigin;
    move-object v2, p2

    .local v2, "v":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Ljavafx/css/StyleableStringProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/String;)V

    .line 103
    move-object v4, v2

    if-nez v4, :cond_1

    .line 105
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->access$200(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/scene/layout/StackPane;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->access$200(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/scene/layout/StackPane;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->access$200(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/scene/layout/StackPane;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 108
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->access$200(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/scene/layout/StackPane;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/image/ImageView;

    move-object v3, v4

    .line 109
    .local v3, "imageView":Ljavafx/scene/image/ImageView;
    move-object v4, v3

    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getInstance()Lcom/sun/javafx/css/StyleManager;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/javafx/css/StyleManager;->getCachedImage(Ljava/lang/String;)Ljavafx/scene/image/Image;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/image/ImageView;->setImage(Ljavafx/scene/image/Image;)V

    .line 110
    goto :goto_0

    .line 111
    .end local v3    # "imageView":Ljavafx/scene/image/ImageView;
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->access$200(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/scene/layout/StackPane;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    new-instance v5, Ljavafx/scene/image/ImageView;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getInstance()Lcom/sun/javafx/css/StyleManager;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/sun/javafx/css/StyleManager;->getCachedImage(Ljava/lang/String;)Ljavafx/scene/image/Image;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavafx/scene/image/ImageView;-><init>(Ljavafx/scene/image/Image;)V

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$2;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$2;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/ColorPicker;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$2;
    # getter for: Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$StyleableProperties;->GRAPHIC:Ljavafx/css/CssMetaData;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$StyleableProperties;->access$300()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$2;
    const-string v1, "imageUrl"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$2;
    return-object v0
.end method
