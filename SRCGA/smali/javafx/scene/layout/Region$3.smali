.class Ljavafx/scene/layout/Region$3;
.super Ljavafx/css/StyleableObjectProperty;
.source "Region.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/layout/Region;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/scene/layout/Background;",
        ">;"
    }
.end annotation


# instance fields
.field private old:Ljavafx/scene/layout/Background;

.field final synthetic this$0:Ljavafx/scene/layout/Region;


# direct methods
.method constructor <init>(Ljavafx/scene/layout/Region;Ljavafx/scene/layout/Background;)V
    .locals 5

    .prologue
    .line 569
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/layout/Region;
    move-object v2, p2

    .local v2, "initialValue":Ljavafx/scene/layout/Background;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/layout/Region$3;->this$0:Ljavafx/scene/layout/Region;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    .line 570
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/layout/Region$3;->old:Ljavafx/scene/layout/Background;

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 571
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region$3;->this$0:Ljavafx/scene/layout/Region;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region$3;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/layout/Region;",
            "Ljavafx/scene/layout/Background;",
            ">;"
        }
    .end annotation

    .prologue
    .line 574
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$3;
    # getter for: Ljavafx/scene/layout/Region$StyleableProperties;->BACKGROUND:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/layout/Region$StyleableProperties;->access$600()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 572
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$3;
    const-string v1, "background"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region$3;
    return-object v0
.end method

.method protected invalidated()V
    .locals 10

    .prologue
    .line 578
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$3;
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/layout/Region$3;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/layout/Background;

    move-object v1, v6

    .line 579
    .local v1, "b":Ljavafx/scene/layout/Background;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/Region$3;->old:Ljavafx/scene/layout/Background;

    if-eqz v6, :cond_5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/Region$3;->old:Ljavafx/scene/layout/Background;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljavafx/scene/layout/Background;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 581
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/Region$3;->old:Ljavafx/scene/layout/Background;

    if-eqz v6, :cond_1

    move-object v6, v1

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/Region$3;->old:Ljavafx/scene/layout/Background;

    invoke-virtual {v6}, Ljavafx/scene/layout/Background;->getOutsets()Ljavafx/geometry/Insets;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/layout/Background;->getOutsets()Ljavafx/geometry/Insets;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/geometry/Insets;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 584
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/Region$3;->this$0:Ljavafx/scene/layout/Region;

    invoke-static {v6}, Ljavafx/scene/layout/Region;->access$700(Ljavafx/scene/layout/Region;)V

    .line 585
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/Region$3;->this$0:Ljavafx/scene/layout/Region;

    invoke-static {v6}, Ljavafx/scene/layout/Region;->access$500(Ljavafx/scene/layout/Region;)Ljavafx/scene/layout/Region$InsetsProperty;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/layout/Region$InsetsProperty;->fireValueChanged()V

    .line 593
    :cond_2
    move-object v6, v1

    if-eqz v6, :cond_7

    .line 594
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/layout/Background;->getImages()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v6

    :goto_0
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/layout/BackgroundImage;

    move-object v3, v6

    .line 595
    .local v3, "i":Ljavafx/scene/layout/BackgroundImage;
    move-object v6, v3

    iget-object v6, v6, Ljavafx/scene/layout/BackgroundImage;->image:Ljavafx/scene/image/Image;

    move-object v4, v6

    .line 596
    .local v4, "image":Ljavafx/scene/image/Image;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getImageAccessor()Lcom/sun/javafx/tk/Toolkit$ImageAccessor;

    move-result-object v6

    move-object v5, v6

    .line 597
    .local v5, "acc":Lcom/sun/javafx/tk/Toolkit$ImageAccessor;
    move-object v6, v5

    move-object v7, v4

    invoke-interface {v6, v7}, Lcom/sun/javafx/tk/Toolkit$ImageAccessor;->isAnimation(Ljavafx/scene/image/Image;)Z

    move-result v6

    if-nez v6, :cond_3

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/image/Image;->getProgress()D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_4

    .line 598
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/Region$3;->this$0:Ljavafx/scene/layout/Region;

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljavafx/scene/layout/Region;->addImageListener(Ljavafx/scene/image/Image;)V

    .line 600
    :cond_4
    goto :goto_0

    .line 579
    .end local v3    # "i":Ljavafx/scene/layout/BackgroundImage;
    .end local v4    # "image":Ljavafx/scene/image/Image;
    .end local v5    # "acc":Lcom/sun/javafx/tk/Toolkit$ImageAccessor;
    :cond_5
    move-object v6, v1

    if-nez v6, :cond_0

    .line 615
    :cond_6
    :goto_1
    return-void

    .line 604
    :cond_7
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/Region$3;->old:Ljavafx/scene/layout/Background;

    if-eqz v6, :cond_8

    .line 605
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/Region$3;->old:Ljavafx/scene/layout/Background;

    invoke-virtual {v6}, Ljavafx/scene/layout/Background;->getImages()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v6

    :goto_2
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/layout/BackgroundImage;

    move-object v3, v6

    .line 606
    .restart local v3    # "i":Ljavafx/scene/layout/BackgroundImage;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/Region$3;->this$0:Ljavafx/scene/layout/Region;

    move-object v7, v3

    iget-object v7, v7, Ljavafx/scene/layout/BackgroundImage;->image:Ljavafx/scene/image/Image;

    invoke-virtual {v6, v7}, Ljavafx/scene/layout/Region;->removeImageListener(Ljavafx/scene/image/Image;)V

    .line 607
    goto :goto_2

    .line 611
    .end local v3    # "i":Ljavafx/scene/layout/BackgroundImage;
    :cond_8
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/Region$3;->this$0:Ljavafx/scene/layout/Region;

    sget-object v7, Lcom/sun/javafx/scene/DirtyBits;->SHAPE_FILL:Lcom/sun/javafx/scene/DirtyBits;

    invoke-static {v6, v7}, Ljavafx/scene/layout/Region;->access$800(Ljavafx/scene/layout/Region;Lcom/sun/javafx/scene/DirtyBits;)V

    .line 612
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/Region$3;->this$0:Ljavafx/scene/layout/Region;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljavafx/scene/layout/Region;->access$902(Ljavafx/scene/layout/Region;Z)Z

    move-result v6

    .line 613
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Ljavafx/scene/layout/Region$3;->old:Ljavafx/scene/layout/Background;

    goto :goto_1
.end method
