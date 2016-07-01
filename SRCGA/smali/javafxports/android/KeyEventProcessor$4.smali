.class Ljavafxports/android/KeyEventProcessor$4;
.super Ljava/lang/Object;
.source "KeyEventProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafxports/android/KeyEventProcessor;->process(Landroid/view/KeyEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafxports/android/KeyEventProcessor;

.field final synthetic val$event:Landroid/view/KeyEvent;

.field final synthetic val$jfxKeyCode:Ljavafx/scene/input/KeyCode;

.field final synthetic val$jfxModifiers:I


# direct methods
.method constructor <init>(Ljavafxports/android/KeyEventProcessor;Landroid/view/KeyEvent;Ljavafx/scene/input/KeyCode;I)V
    .locals 7

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/KeyEventProcessor$4;
    move-object v1, p1

    .local v1, "this$0":Ljavafxports/android/KeyEventProcessor;
    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafxports/android/KeyEventProcessor$4;->this$0:Ljavafxports/android/KeyEventProcessor;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljavafxports/android/KeyEventProcessor$4;->val$event:Landroid/view/KeyEvent;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Ljavafxports/android/KeyEventProcessor$4;->val$jfxKeyCode:Ljavafx/scene/input/KeyCode;

    move-object v5, v0

    move v6, v4

    iput v6, v5, Ljavafxports/android/KeyEventProcessor$4;->val$jfxModifiers:I

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/KeyEventProcessor$4;
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafxports/android/KeyEventProcessor$4;->val$event:Landroid/view/KeyEvent;

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 97
    const/16 v2, 0x6f

    move-object v3, v0

    iget-object v3, v3, Ljavafxports/android/KeyEventProcessor$4;->val$jfxKeyCode:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v3}, Ljavafx/scene/input/KeyCode;->impl_getCode()I

    move-result v3

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Ljavafxports/android/KeyEventProcessor$4;->val$jfxModifiers:I

    invoke-static {v2, v3, v4, v5}, Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;->dispatchKeyEvent(II[CI)V

    .line 98
    const/16 v2, 0x70

    move-object v3, v0

    iget-object v3, v3, Ljavafxports/android/KeyEventProcessor$4;->val$jfxKeyCode:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v3}, Ljavafx/scene/input/KeyCode;->impl_getCode()I

    move-result v3

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Ljavafxports/android/KeyEventProcessor$4;->val$jfxModifiers:I

    invoke-static {v2, v3, v4, v5}, Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;->dispatchKeyEvent(II[CI)V

    .line 99
    const/16 v2, 0x71

    move-object v3, v0

    iget-object v3, v3, Ljavafxports/android/KeyEventProcessor$4;->val$jfxKeyCode:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v3}, Ljavafx/scene/input/KeyCode;->impl_getCode()I

    move-result v3

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Ljavafxports/android/KeyEventProcessor$4;->val$jfxModifiers:I

    invoke-static {v2, v3, v4, v5}, Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;->dispatchKeyEvent(II[CI)V

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method
