.class Lcom/sun/glass/ui/monocle/LinuxEventBuffers;
.super Ljava/lang/Object;
.source "LinuxEventBuffers.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffers;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static filterMouseMotion(Lcom/sun/glass/ui/monocle/LinuxEventBuffer;)V
    .locals 0
    .param p0, "buffer"    # Lcom/sun/glass/ui/monocle/LinuxEventBuffer;

    .prologue
    .line 32
    return-void
.end method
