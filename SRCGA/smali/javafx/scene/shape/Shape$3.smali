.class Ljavafx/scene/shape/Shape$3;
.super Ljavafx/css/StyleableObjectProperty;
.source "Shape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/shape/Shape;->strokeProperty()Ljavafx/beans/property/ObjectProperty;
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
.method constructor <init>(Ljavafx/scene/shape/Shape;)V
    .locals 4

    .prologue
    .line 455
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/shape/Shape;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/Shape$3;->this$0:Ljavafx/scene/shape/Shape;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/css/StyleableObjectProperty;-><init>()V

    .line 457
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/shape/Shape$3;->needsListener:Z

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$3;->this$0:Ljavafx/scene/shape/Shape;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$3;
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
    .line 482
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$3;
    # getter for: Ljavafx/scene/shape/Shape$StyleableProperties;->STROKE:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/shape/Shape$StyleableProperties;->access$400()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 492
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$3;
    const-string v1, "stroke"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$3;
    return-object v0
.end method

.method public invalidated()V
    .locals 5

    .prologue
    .line 461
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$3;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/Shape$3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/paint/Paint;

    move-object v1, v2

    .line 463
    .local v1, "_stroke":Ljavafx/scene/paint/Paint;
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/shape/Shape$3;->needsListener:Z

    if-eqz v2, :cond_0

    .line 464
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getPaintAccessor()Lcom/sun/javafx/tk/Toolkit$PaintAccessor;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/Shape$3;->this$0:Ljavafx/scene/shape/Shape;

    iget-object v3, v3, Ljavafx/scene/shape/Shape;->old_stroke:Ljavafx/scene/paint/Paint;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/shape/Shape$3;->this$0:Ljavafx/scene/shape/Shape;

    .line 465
    invoke-static {v4}, Ljavafx/scene/shape/Shape;->access$000(Ljavafx/scene/shape/Shape;)Lcom/sun/javafx/beans/event/AbstractNotifyListener;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/sun/javafx/tk/Toolkit$PaintAccessor;->removeListener(Ljavafx/scene/paint/Paint;Lcom/sun/javafx/beans/event/AbstractNotifyListener;)V

    .line 467
    :cond_0
    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_2

    .line 468
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getPaintAccessor()Lcom/sun/javafx/tk/Toolkit$PaintAccessor;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/sun/javafx/tk/Toolkit$PaintAccessor;->isMutable(Ljavafx/scene/paint/Paint;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Ljavafx/scene/shape/Shape$3;->needsListener:Z

    .line 469
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Shape$3;->this$0:Ljavafx/scene/shape/Shape;

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/Shape;->old_stroke:Ljavafx/scene/paint/Paint;

    .line 471
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/shape/Shape$3;->needsListener:Z

    if-eqz v2, :cond_1

    .line 472
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getPaintAccessor()Lcom/sun/javafx/tk/Toolkit$PaintAccessor;

    move-result-object v2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/shape/Shape$3;->this$0:Ljavafx/scene/shape/Shape;

    .line 473
    invoke-static {v4}, Ljavafx/scene/shape/Shape;->access$000(Ljavafx/scene/shape/Shape;)Lcom/sun/javafx/beans/event/AbstractNotifyListener;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/sun/javafx/tk/Toolkit$PaintAccessor;->addListener(Ljavafx/scene/paint/Paint;Lcom/sun/javafx/beans/event/AbstractNotifyListener;)V

    .line 476
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Shape$3;->this$0:Ljavafx/scene/shape/Shape;

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->SHAPE_STROKE:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/Shape;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 477
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Shape$3;->this$0:Ljavafx/scene/shape/Shape;

    invoke-static {v2}, Ljavafx/scene/shape/Shape;->access$100(Ljavafx/scene/shape/Shape;)V

    .line 478
    return-void

    .line 468
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
