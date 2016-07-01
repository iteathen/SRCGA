.class Ljavafx/scene/effect/Lighting$4;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "Lighting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/effect/Lighting;->specularExponentProperty()Ljavafx/beans/property/DoubleProperty;
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
    .line 347
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting$4;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/effect/Lighting;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/effect/Lighting$4;->this$0:Ljavafx/scene/effect/Lighting;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/DoublePropertyBase;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Lighting$4;->this$0:Ljavafx/scene/effect/Lighting;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Lighting$4;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting$4;
    const-string v1, "specularExponent"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Lighting$4;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Lighting$4;->this$0:Ljavafx/scene/effect/Lighting;

    sget-object v2, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/effect/Lighting;->markDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)V

    .line 352
    return-void
.end method
