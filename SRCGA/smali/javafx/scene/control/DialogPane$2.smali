.class Ljavafx/scene/control/DialogPane$2;
.super Ljavafx/css/StyleableStringProperty;
.source "DialogPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/DialogPane;->imageUrlProperty()Ljavafx/css/StyleableStringProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field origin:Ljavafx/css/StyleOrigin;

.field final synthetic this$0:Ljavafx/scene/control/DialogPane;


# direct methods
.method constructor <init>(Ljavafx/scene/control/DialogPane;)V
    .locals 4

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/DialogPane;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/DialogPane$2;->this$0:Ljavafx/scene/control/DialogPane;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/css/StyleableStringProperty;-><init>()V

    .line 332
    move-object v2, v0

    sget-object v3, Ljavafx/css/StyleOrigin;->USER:Ljavafx/css/StyleOrigin;

    iput-object v3, v2, Ljavafx/scene/control/DialogPane$2;->origin:Ljavafx/css/StyleOrigin;

    return-void
.end method


# virtual methods
.method public bridge synthetic applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane$2;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/DialogPane$2;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/String;)V

    return-void
.end method

.method public applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane$2;
    move-object v1, p1

    .local v1, "origin":Ljavafx/css/StyleOrigin;
    move-object v2, p2

    .local v2, "v":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/DialogPane$2;->origin:Ljavafx/css/StyleOrigin;

    .line 339
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/DialogPane$2;->this$0:Ljavafx/scene/control/DialogPane;

    invoke-static {v3}, Ljavafx/scene/control/DialogPane;->access$200(Ljavafx/scene/control/DialogPane;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/DialogPane$2;->this$0:Ljavafx/scene/control/DialogPane;

    invoke-static {v3}, Ljavafx/scene/control/DialogPane;->access$200(Ljavafx/scene/control/DialogPane;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/beans/property/ObjectProperty;->isBound()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/css/StyleableStringProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/String;)V

    .line 342
    :cond_1
    move-object v3, v0

    sget-object v4, Ljavafx/css/StyleOrigin;->USER:Ljavafx/css/StyleOrigin;

    iput-object v4, v3, Ljavafx/scene/control/DialogPane$2;->origin:Ljavafx/css/StyleOrigin;

    .line 343
    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane$2;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/DialogPane$2;->get()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/DialogPane$2;
    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 4

    .prologue
    .line 390
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane$2;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/DialogPane$2;->this$0:Ljavafx/scene/control/DialogPane;

    invoke-virtual {v3}, Ljavafx/scene/control/DialogPane;->getGraphic()Ljavafx/scene/Node;

    move-result-object v3

    move-object v1, v3

    .line 391
    .local v1, "graphic":Ljavafx/scene/Node;
    move-object v3, v1

    instance-of v3, v3, Ljavafx/scene/image/ImageView;

    if-eqz v3, :cond_0

    .line 392
    move-object v3, v1

    check-cast v3, Ljavafx/scene/image/ImageView;

    invoke-virtual {v3}, Ljavafx/scene/image/ImageView;->getImage()Ljavafx/scene/image/Image;

    move-result-object v3

    move-object v2, v3

    .line 393
    .local v2, "image":Ljavafx/scene/image/Image;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 394
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/image/Image;->impl_getUrl()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 397
    .end local v0    # "this":Ljavafx/scene/control/DialogPane$2;
    .end local v2    # "image":Ljavafx/scene/image/Image;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/DialogPane$2;
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/DialogPane$2;->this$0:Ljavafx/scene/control/DialogPane;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/DialogPane$2;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/DialogPane;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane$2;
    # getter for: Ljavafx/scene/control/DialogPane$StyleableProperties;->GRAPHIC:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/control/DialogPane$StyleableProperties;->access$000()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/DialogPane$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 416
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane$2;
    const-string v1, "imageUrl"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/DialogPane$2;
    return-object v0
.end method

.method public getStyleOrigin()Ljavafx/css/StyleOrigin;
    .locals 2

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/DialogPane$2;->this$0:Ljavafx/scene/control/DialogPane;

    invoke-static {v1}, Ljavafx/scene/control/DialogPane;->access$200(Ljavafx/scene/control/DialogPane;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/DialogPane$2;->this$0:Ljavafx/scene/control/DialogPane;

    invoke-static {v1}, Ljavafx/scene/control/DialogPane;->access$200(Ljavafx/scene/control/DialogPane;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    check-cast v1, Ljavafx/css/StyleableProperty;

    invoke-interface {v1}, Ljavafx/css/StyleableProperty;->getStyleOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/DialogPane$2;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/DialogPane$2;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected invalidated()V
    .locals 12

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane$2;
    move-object v6, v0

    invoke-super {v6}, Ljavafx/css/StyleableStringProperty;->get()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 350
    .local v1, "url":Ljava/lang/String;
    move-object v6, v1

    if-nez v6, :cond_1

    .line 351
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/DialogPane$2;->this$0:Ljavafx/scene/control/DialogPane;

    invoke-virtual {v6}, Ljavafx/scene/control/DialogPane;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    check-cast v6, Ljavafx/css/StyleableProperty;

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/DialogPane$2;->origin:Ljavafx/css/StyleOrigin;

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/DialogPane$2;->this$0:Ljavafx/scene/control/DialogPane;

    invoke-virtual {v6}, Ljavafx/scene/control/DialogPane;->getGraphic()Ljavafx/scene/Node;

    move-result-object v6

    move-object v2, v6

    .line 355
    .local v2, "graphicNode":Ljavafx/scene/Node;
    move-object v6, v2

    instance-of v6, v6, Ljavafx/scene/image/ImageView;

    if-eqz v6, :cond_2

    .line 356
    move-object v6, v2

    check-cast v6, Ljavafx/scene/image/ImageView;

    move-object v3, v6

    .line 357
    .local v3, "imageView":Ljavafx/scene/image/ImageView;
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/image/ImageView;->getImage()Ljavafx/scene/image/Image;

    move-result-object v6

    move-object v4, v6

    .line 358
    .local v4, "image":Ljavafx/scene/image/Image;
    move-object v6, v4

    if-eqz v6, :cond_2

    .line 359
    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/image/Image;->impl_getUrl()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 360
    .local v5, "imageViewUrl":Ljava/lang/String;
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 365
    .end local v3    # "imageView":Ljavafx/scene/image/ImageView;
    .end local v4    # "image":Ljavafx/scene/image/Image;
    .end local v5    # "imageViewUrl":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getInstance()Lcom/sun/javafx/css/StyleManager;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/sun/javafx/css/StyleManager;->getCachedImage(Ljava/lang/String;)Ljavafx/scene/image/Image;

    move-result-object v6

    move-object v3, v6

    .line 367
    .local v3, "img":Ljavafx/scene/image/Image;
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 379
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/DialogPane$2;->this$0:Ljavafx/scene/control/DialogPane;

    invoke-virtual {v6}, Ljavafx/scene/control/DialogPane;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    check-cast v6, Ljavafx/css/StyleableProperty;

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/DialogPane$2;->origin:Ljavafx/css/StyleOrigin;

    new-instance v8, Ljavafx/scene/image/ImageView;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v3

    invoke-direct {v9, v10}, Ljavafx/scene/image/ImageView;-><init>(Ljavafx/scene/image/Image;)V

    invoke-interface {v6, v7, v8}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    goto :goto_0
.end method
