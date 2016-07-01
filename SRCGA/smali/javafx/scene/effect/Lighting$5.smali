.class Ljavafx/scene/effect/Lighting$5;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "Lighting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/effect/Lighting;->surfaceScaleProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/effect/Lighting;


# direct methods
.method constructor <init>(Ljavafx/scene/effect/Lighting;D)V
    .locals 8

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting$5;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/effect/Lighting;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/effect/Lighting$5;->this$0:Ljavafx/scene/effect/Lighting;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/DoublePropertyBase;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Lighting$5;->this$0:Ljavafx/scene/effect/Lighting;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Lighting$5;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting$5;
    const-string v1, "surfaceScale"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Lighting$5;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Lighting$5;->this$0:Ljavafx/scene/effect/Lighting;

    sget-object v2, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/effect/Lighting;->markDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)V

    .line 396
    return-void
.end method
