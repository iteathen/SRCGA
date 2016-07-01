.class Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$MotionProcessor;
.super Ljava/lang/Object;
.source "X11InputDeviceRegistry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;

.field private x:I

.field private y:I


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;II)V
    .locals 6

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$MotionProcessor;
    move-object v1, p1

    move v2, p2

    .local v2, "x":I
    move v3, p3

    .local v3, "y":I
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$MotionProcessor;->this$0:Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 160
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$MotionProcessor;->x:I

    .line 161
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$MotionProcessor;->y:I

    .line 162
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$MotionProcessor;
    invoke-static {}, Lcom/sun/glass/ui/monocle/MouseInput;->getInstance()Lcom/sun/glass/ui/monocle/MouseInput;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$MotionProcessor;->this$0:Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;

    invoke-static {v2}, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;->access$000(Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;)Lcom/sun/glass/ui/monocle/MouseState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/monocle/MouseInput;->getState(Lcom/sun/glass/ui/monocle/MouseState;)V

    .line 166
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$MotionProcessor;->this$0:Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;

    invoke-static {v1}, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;->access$000(Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;)Lcom/sun/glass/ui/monocle/MouseState;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$MotionProcessor;->x:I

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/monocle/MouseState;->setX(I)V

    .line 167
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$MotionProcessor;->this$0:Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;

    invoke-static {v1}, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;->access$000(Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;)Lcom/sun/glass/ui/monocle/MouseState;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$MotionProcessor;->y:I

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/monocle/MouseState;->setY(I)V

    .line 168
    invoke-static {}, Lcom/sun/glass/ui/monocle/MouseInput;->getInstance()Lcom/sun/glass/ui/monocle/MouseInput;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$MotionProcessor;->this$0:Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;

    invoke-static {v2}, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;->access$000(Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;)Lcom/sun/glass/ui/monocle/MouseState;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/glass/ui/monocle/MouseInput;->setState(Lcom/sun/glass/ui/monocle/MouseState;Z)V

    .line 169
    return-void
.end method
