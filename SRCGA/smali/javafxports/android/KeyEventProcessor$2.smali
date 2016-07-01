.class Ljavafxports/android/KeyEventProcessor$2;
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
.method constructor <init>(Ljavafxports/android/KeyEventProcessor;Ljavafx/scene/input/KeyCode;ILandroid/view/KeyEvent;)V
    .locals 7

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/KeyEventProcessor$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafxports/android/KeyEventProcessor;
    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafxports/android/KeyEventProcessor$2;->this$0:Ljavafxports/android/KeyEventProcessor;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljavafxports/android/KeyEventProcessor$2;->val$jfxKeyCode:Ljavafx/scene/input/KeyCode;

    move-object v5, v0

    move v6, v3

    iput v6, v5, Ljavafxports/android/KeyEventProcessor$2;->val$jfxModifiers:I

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljavafxports/android/KeyEventProcessor$2;->val$event:Landroid/view/KeyEvent;

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/KeyEventProcessor$2;
    const/16 v2, 0x70

    move-object v3, v0

    iget-object v3, v3, Ljavafxports/android/KeyEventProcessor$2;->val$jfxKeyCode:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v3}, Ljavafx/scene/input/KeyCode;->impl_getCode()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Ljavafxports/android/KeyEventProcessor$2;->val$jfxKeyCode:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v4}, Ljavafx/scene/input/KeyCode;->impl_getChar()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Ljavafxports/android/KeyEventProcessor$2;->val$jfxModifiers:I

    invoke-static {v2, v3, v4, v5}, Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;->dispatchKeyEvent(II[CI)V

    .line 63
    move-object v2, v0

    iget-object v2, v2, Ljavafxports/android/KeyEventProcessor$2;->val$event:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    move v1, v2

    .line 64
    .local v1, "unicodeChar":I
    move v2, v1

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 65
    move-object v2, v0

    iget-object v2, v2, Ljavafxports/android/KeyEventProcessor$2;->this$0:Ljavafxports/android/KeyEventProcessor;

    move v3, v1

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    invoke-static {v2, v3}, Ljavafxports/android/KeyEventProcessor;->access$002(Ljavafxports/android/KeyEventProcessor;I)I

    move-result v2

    .line 67
    .line 80
    :goto_0
    return-void

    .line 70
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafxports/android/KeyEventProcessor$2;->this$0:Ljavafxports/android/KeyEventProcessor;

    invoke-static {v2}, Ljavafxports/android/KeyEventProcessor;->access$000(Ljavafxports/android/KeyEventProcessor;)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    if-eqz v2, :cond_1

    .line 71
    move-object v2, v0

    iget-object v2, v2, Ljavafxports/android/KeyEventProcessor$2;->this$0:Ljavafxports/android/KeyEventProcessor;

    invoke-static {v2}, Ljavafxports/android/KeyEventProcessor;->access$000(Ljavafxports/android/KeyEventProcessor;)I

    move-result v2

    move v3, v1

    invoke-static {v2, v3}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result v2

    move v1, v2

    .line 72
    move-object v2, v0

    iget-object v2, v2, Ljavafxports/android/KeyEventProcessor$2;->this$0:Ljavafxports/android/KeyEventProcessor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljavafxports/android/KeyEventProcessor;->access$002(Ljavafxports/android/KeyEventProcessor;I)I

    move-result v2

    .line 75
    :cond_1
    move v2, v1

    if-eqz v2, :cond_2

    .line 77
    const/16 v2, 0x71

    sget-object v3, Ljavafx/scene/input/KeyCode;->UNDEFINED:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v3}, Ljavafx/scene/input/KeyCode;->impl_getCode()I

    move-result v3

    move v4, v1

    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Ljavafxports/android/KeyEventProcessor$2;->val$jfxModifiers:I

    invoke-static {v2, v3, v4, v5}, Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;->dispatchKeyEvent(II[CI)V

    .line 80
    :cond_2
    goto :goto_0
.end method
