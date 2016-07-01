.class public abstract Lcom/sun/scenario/effect/impl/sw/sse/SSEEffectPeer;
.super Lcom/sun/scenario/effect/impl/EffectPeer;
.source "SSEEffectPeer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sun/scenario/effect/impl/state/RenderState;",
        ">",
        "Lcom/sun/scenario/effect/impl/EffectPeer",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEEffectPeer;, "Lcom/sun/scenario/effect/impl/sw/sse/SSEEffectPeer<TT;>;"
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, p2

    .local v2, "r":Lcom/sun/scenario/effect/impl/Renderer;
    move-object v3, p3

    .local v3, "uniqueName":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/scenario/effect/impl/EffectPeer;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V

    .line 37
    return-void
.end method
