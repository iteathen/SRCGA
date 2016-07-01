.class Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$ButtonPressProcessor;
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
    name = "ButtonPressProcessor"
.end annotation


# instance fields
.field private button:I

.field final synthetic this$0:Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;I)V
    .locals 5

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$ButtonPressProcessor;
    move-object v1, p1

    move v2, p2

    .local v2, "button":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$ButtonPressProcessor;->this$0:Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 127
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$ButtonPressProcessor;->button:I

    .line 128
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$ButtonPressProcessor;
    invoke-static {}, Lcom/sun/glass/ui/monocle/MouseInput;->getInstance()Lcom/sun/glass/ui/monocle/MouseInput;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$ButtonPressProcessor;->this$0:Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;

    invoke-static {v3}, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;->access$000(Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;)Lcom/sun/glass/ui/monocle/MouseState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/MouseInput;->getState(Lcom/sun/glass/ui/monocle/MouseState;)V

    .line 132
    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$ButtonPressProcessor;->button:I

    invoke-static {v2}, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;->access$100(I)I

    move-result v2

    move v1, v2

    .line 133
    .local v1, "glassButton":I
    move v2, v1

    const/16 v3, 0xd3

    if-eq v2, v3, :cond_0

    .line 134
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$ButtonPressProcessor;->this$0:Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;

    invoke-static {v2}, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;->access$000(Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;)Lcom/sun/glass/ui/monocle/MouseState;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/MouseState;->pressButton(I)V

    .line 136
    :cond_0
    invoke-static {}, Lcom/sun/glass/ui/monocle/MouseInput;->getInstance()Lcom/sun/glass/ui/monocle/MouseInput;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$ButtonPressProcessor;->this$0:Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;

    invoke-static {v3}, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;->access$000(Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;)Lcom/sun/glass/ui/monocle/MouseState;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/glass/ui/monocle/MouseInput;->setState(Lcom/sun/glass/ui/monocle/MouseState;Z)V

    .line 137
    return-void
.end method
