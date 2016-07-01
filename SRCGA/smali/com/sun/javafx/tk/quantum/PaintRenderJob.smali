.class Lcom/sun/javafx/tk/quantum/PaintRenderJob;
.super Lcom/sun/javafx/tk/RenderJob;
.source "PaintRenderJob.java"


# instance fields
.field private scene:Lcom/sun/javafx/tk/quantum/GlassScene;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/tk/quantum/GlassScene;Lcom/sun/javafx/tk/CompletionListener;Ljava/lang/Runnable;)V
    .locals 7

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PaintRenderJob;
    move-object v1, p1

    .local v1, "gs":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v2, p2

    .local v2, "cl":Lcom/sun/javafx/tk/CompletionListener;
    move-object v3, p3

    .local v3, "r":Ljava/lang/Runnable;
    move-object v4, v0

    move-object v5, v3

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/tk/RenderJob;-><init>(Ljava/lang/Runnable;Lcom/sun/javafx/tk/CompletionListener;)V

    .line 38
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/tk/quantum/PaintRenderJob;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    .line 39
    return-void
.end method


# virtual methods
.method public getScene()Lcom/sun/javafx/tk/quantum/GlassScene;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PaintRenderJob;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/PaintRenderJob;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/PaintRenderJob;
    return-object v0
.end method
