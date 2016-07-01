.class Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer$1;
.super Ljava/lang/Object;
.source "PPSRenderer.java"

# interfaces
.implements Lcom/sun/prism/ResourceFactoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;


# direct methods
.method constructor <init>(Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;)V
    .locals 4

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer$1;->this$0:Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public factoryReleased()V
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer$1;->this$0:Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->dispose()V

    .line 83
    return-void
.end method

.method public factoryReset()V
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer$1;->this$0:Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->dispose()V

    .line 79
    return-void
.end method
