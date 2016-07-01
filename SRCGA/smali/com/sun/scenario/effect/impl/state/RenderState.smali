.class public interface abstract Lcom/sun/scenario/effect/impl/state/RenderState;
.super Ljava/lang/Object;
.source "RenderState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;
    }
.end annotation


# static fields
.field public static final RenderSpaceRenderState:Lcom/sun/scenario/effect/impl/state/RenderState;

.field public static final UnclippedUserSpaceRenderState:Lcom/sun/scenario/effect/impl/state/RenderState;

.field public static final UserSpaceRenderState:Lcom/sun/scenario/effect/impl/state/RenderState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 87
    new-instance v0, Lcom/sun/scenario/effect/impl/state/RenderState$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/scenario/effect/impl/state/RenderState$1;-><init>()V

    sput-object v0, Lcom/sun/scenario/effect/impl/state/RenderState;->UserSpaceRenderState:Lcom/sun/scenario/effect/impl/state/RenderState;

    .line 115
    new-instance v0, Lcom/sun/scenario/effect/impl/state/RenderState$2;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/scenario/effect/impl/state/RenderState$2;-><init>()V

    sput-object v0, Lcom/sun/scenario/effect/impl/state/RenderState;->UnclippedUserSpaceRenderState:Lcom/sun/scenario/effect/impl/state/RenderState;

    .line 143
    new-instance v0, Lcom/sun/scenario/effect/impl/state/RenderState$3;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/scenario/effect/impl/state/RenderState$3;-><init>()V

    sput-object v0, Lcom/sun/scenario/effect/impl/state/RenderState;->RenderSpaceRenderState:Lcom/sun/scenario/effect/impl/state/RenderState;

    return-void
.end method


# virtual methods
.method public abstract getEffectTransformSpace()Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;
.end method

.method public abstract getInputClip(ILcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;
.end method

.method public abstract getInputTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
.end method

.method public abstract getResultTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
.end method
