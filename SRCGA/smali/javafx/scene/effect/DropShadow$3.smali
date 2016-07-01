.class Ljavafx/scene/effect/DropShadow$3;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "DropShadow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/effect/DropShadow;->heightProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/effect/DropShadow;


# direct methods
.method constructor <init>(Ljavafx/scene/effect/DropShadow;D)V
    .locals 8

    .prologue
    .line 365
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/effect/DropShadow;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/effect/DropShadow$3;->this$0:Ljavafx/scene/effect/DropShadow;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/DoublePropertyBase;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DropShadow$3;->this$0:Ljavafx/scene/effect/DropShadow;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/DropShadow$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow$3;
    const-string v1, "height"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/DropShadow$3;
    return-object v0
.end method

.method public invalidated()V
    .locals 7

    .prologue
    .line 370
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/DropShadow$3;
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/effect/DropShadow$3;->this$0:Ljavafx/scene/effect/DropShadow;

    invoke-virtual {v4}, Ljavafx/scene/effect/DropShadow;->getHeight()D

    move-result-wide v4

    move-wide v2, v4

    .line 371
    .local v2, "localHeight":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/effect/DropShadow$3;->this$0:Ljavafx/scene/effect/DropShadow;

    invoke-static {v4}, Ljavafx/scene/effect/DropShadow;->access$000(Ljavafx/scene/effect/DropShadow;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 372
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/effect/DropShadow$3;->this$0:Ljavafx/scene/effect/DropShadow;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljavafx/scene/effect/DropShadow;->access$002(Ljavafx/scene/effect/DropShadow;Z)Z

    move-result v4

    .line 373
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/effect/DropShadow$3;->this$0:Ljavafx/scene/effect/DropShadow;

    move-wide v5, v2

    invoke-static {v4, v5, v6}, Ljavafx/scene/effect/DropShadow;->access$300(Ljavafx/scene/effect/DropShadow;D)V

    .line 374
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/effect/DropShadow$3;->this$0:Ljavafx/scene/effect/DropShadow;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljavafx/scene/effect/DropShadow;->access$002(Ljavafx/scene/effect/DropShadow;Z)Z

    move-result v4

    .line 375
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/effect/DropShadow$3;->this$0:Ljavafx/scene/effect/DropShadow;

    sget-object v5, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-virtual {v4, v5}, Ljavafx/scene/effect/DropShadow;->markDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)V

    .line 376
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/effect/DropShadow$3;->this$0:Ljavafx/scene/effect/DropShadow;

    invoke-virtual {v4}, Ljavafx/scene/effect/DropShadow;->effectBoundsChanged()V

    .line 378
    :cond_0
    return-void
.end method
