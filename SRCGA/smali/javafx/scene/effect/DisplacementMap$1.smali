.class Ljavafx/scene/effect/DisplacementMap$1;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "DisplacementMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/effect/DisplacementMap;->mapDataProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/scene/effect/FloatMap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/effect/DisplacementMap;


# direct methods
.method constructor <init>(Ljavafx/scene/effect/DisplacementMap;)V
    .locals 4

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/effect/DisplacementMap;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/effect/DisplacementMap$1;->this$0:Ljavafx/scene/effect/DisplacementMap;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DisplacementMap$1;->this$0:Ljavafx/scene/effect/DisplacementMap;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/DisplacementMap$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap$1;
    const-string v1, "mapData"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/DisplacementMap$1;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DisplacementMap$1;->this$0:Ljavafx/scene/effect/DisplacementMap;

    sget-object v2, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/effect/DisplacementMap;->markDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)V

    .line 210
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DisplacementMap$1;->this$0:Ljavafx/scene/effect/DisplacementMap;

    invoke-virtual {v1}, Ljavafx/scene/effect/DisplacementMap;->effectBoundsChanged()V

    .line 211
    return-void
.end method
