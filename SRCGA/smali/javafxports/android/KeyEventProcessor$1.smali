.class Ljavafxports/android/KeyEventProcessor$1;
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

.field final synthetic val$jfxKeyCode:Ljavafx/scene/input/KeyCode;

.field final synthetic val$jfxModifiers:I


# direct methods
.method constructor <init>(Ljavafxports/android/KeyEventProcessor;Ljavafx/scene/input/KeyCode;I)V
    .locals 6

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/KeyEventProcessor$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafxports/android/KeyEventProcessor;
    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafxports/android/KeyEventProcessor$1;->this$0:Ljavafxports/android/KeyEventProcessor;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafxports/android/KeyEventProcessor$1;->val$jfxKeyCode:Ljavafx/scene/input/KeyCode;

    move-object v4, v0

    move v5, v3

    iput v5, v4, Ljavafxports/android/KeyEventProcessor$1;->val$jfxModifiers:I

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/KeyEventProcessor$1;
    const/16 v1, 0x6f

    move-object v2, v0

    iget-object v2, v2, Ljavafxports/android/KeyEventProcessor$1;->val$jfxKeyCode:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->impl_getCode()I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Ljavafxports/android/KeyEventProcessor$1;->val$jfxKeyCode:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v3}, Ljavafx/scene/input/KeyCode;->impl_getChar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Ljavafxports/android/KeyEventProcessor$1;->val$jfxModifiers:I

    invoke-static {v1, v2, v3, v4}, Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;->dispatchKeyEvent(II[CI)V

    .line 54
    return-void
.end method
