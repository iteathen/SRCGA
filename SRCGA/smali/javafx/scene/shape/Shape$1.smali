.class Ljavafx/scene/shape/Shape$1;
.super Ljavafx/css/StyleableObjectProperty;
.source "Shape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/shape/Shape;->fillProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/scene/paint/Paint;",
        ">;"
    }
.end annotation


# instance fields
.field needsListener:Z

.field final synthetic this$0:Ljavafx/scene/shape/Shape;


# direct methods
.method constructor <init>(Ljavafx/scene/shape/Shape;Ljavafx/scene/paint/Paint;)V
    .locals 5

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/shape/Shape;
    move-object v2, p2

    .local v2, "initialValue":Ljavafx/scene/paint/Paint;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/shape/Shape$1;->this$0:Ljavafx/scene/shape/Shape;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    .line 381
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/shape/Shape$1;->needsListener:Z

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$1;->this$0:Ljavafx/scene/shape/Shape;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$1;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/shape/Shape;",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$1;
    # getter for: Ljavafx/scene/shape/Shape$StyleableProperties;->FILL:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/shape/Shape$StyleableProperties;->access$200()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 416
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$1;
    const-string v1, "fill"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$1;
    return-object v0
.end method

.method public invalidated()V
    .locals 5

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$1;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/Shape$1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/paint/Paint;

    move-object v1, v2

    .line 387
    .local v1, "_fill":Ljavafx/scene/paint/Paint;
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/shape/Shape$1;->needsListener:Z

    if-eqz v2, :cond_0

    .line 388
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getPaintAccessor()Lcom/sun/javafx/tk/Toolkit$PaintAccessor;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/Shape$1;->this$0:Ljavafx/scene/shape/Shape;

    iget-object v3, v3, Ljavafx/scene/shape/Shape;->old_fill:Ljavafx/scene/paint/Paint;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/shape/Shape$1;->this$0:Ljavafx/scene/shape/Shape;

    .line 389
    invoke-static {v4}, Ljavafx/scene/shape/Shape;->access$000(Ljavafx/scene/shape/Shape;)Lcom/sun/javafx/beans/event/AbstractNotifyListener;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/sun/javafx/tk/Toolkit$PaintAccessor;->removeListener(Ljavafx/scene/paint/Paint;Lcom/sun/javafx/beans/event/AbstractNotifyListener;)V

    .line 391
    :cond_0
    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_2

    .line 392
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getPaintAccessor()Lcom/sun/javafx/tk/Toolkit$PaintAccessor;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/sun/javafx/tk/Toolkit$PaintAccessor;->isMutable(Ljavafx/scene/paint/Paint;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Ljavafx/scene/shape/Shape$1;->needsListener:Z

    .line 393
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Shape$1;->this$0:Ljavafx/scene/shape/Shape;

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/Shape;->old_fill:Ljavafx/scene/paint/Paint;

    .line 395
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/shape/Shape$1;->needsListener:Z

    if-eqz v2, :cond_1

    .line 396
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getPaintAccessor()Lcom/sun/javafx/tk/Toolkit$PaintAccessor;

    move-result-object v2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/shape/Shape$1;->this$0:Ljavafx/scene/shape/Shape;

    .line 397
    invoke-static {v4}, Ljavafx/scene/shape/Shape;->access$000(Ljavafx/scene/shape/Shape;)Lcom/sun/javafx/beans/event/AbstractNotifyListener;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/sun/javafx/tk/Toolkit$PaintAccessor;->addListener(Ljavafx/scene/paint/Paint;Lcom/sun/javafx/beans/event/AbstractNotifyListener;)V

    .line 400
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Shape$1;->this$0:Ljavafx/scene/shape/Shape;

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->SHAPE_FILL:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/Shape;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 401
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Shape$1;->this$0:Ljavafx/scene/shape/Shape;

    invoke-static {v2}, Ljavafx/scene/shape/Shape;->access$100(Ljavafx/scene/shape/Shape;)V

    .line 402
    return-void

    .line 392
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
