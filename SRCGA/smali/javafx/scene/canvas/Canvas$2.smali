.class Ljavafx/scene/canvas/Canvas$2;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/canvas/Canvas;->heightProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/canvas/Canvas;


# direct methods
.method constructor <init>(Ljavafx/scene/canvas/Canvas;)V
    .locals 4

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/Canvas$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/canvas/Canvas;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/canvas/Canvas$2;->this$0:Ljavafx/scene/canvas/Canvas;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/DoublePropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/Canvas$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/Canvas$2;->this$0:Ljavafx/scene/canvas/Canvas;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/canvas/Canvas$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/Canvas$2;
    const-string v1, "height"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/canvas/Canvas$2;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/Canvas$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/Canvas$2;->this$0:Ljavafx/scene/canvas/Canvas;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    invoke-static {v1, v2}, Ljavafx/scene/canvas/Canvas;->access$300(Ljavafx/scene/canvas/Canvas;Lcom/sun/javafx/scene/DirtyBits;)V

    .line 207
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/Canvas$2;->this$0:Ljavafx/scene/canvas/Canvas;

    invoke-static {v1}, Ljavafx/scene/canvas/Canvas;->access$400(Ljavafx/scene/canvas/Canvas;)V

    .line 208
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/Canvas$2;->this$0:Ljavafx/scene/canvas/Canvas;

    invoke-static {v1}, Ljavafx/scene/canvas/Canvas;->access$200(Ljavafx/scene/canvas/Canvas;)Ljavafx/scene/canvas/GraphicsContext;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 209
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/Canvas$2;->this$0:Ljavafx/scene/canvas/Canvas;

    invoke-static {v1}, Ljavafx/scene/canvas/Canvas;->access$200(Ljavafx/scene/canvas/Canvas;)Ljavafx/scene/canvas/GraphicsContext;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/canvas/GraphicsContext;->updateDimensions()V

    .line 211
    :cond_0
    return-void
.end method
