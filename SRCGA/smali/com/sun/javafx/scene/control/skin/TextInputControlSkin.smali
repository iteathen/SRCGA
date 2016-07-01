.class public abstract Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;
.super Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;
.source "TextInputControlSkin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$StyleableProperties;,
        Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$ContextMenuItem;,
        Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljavafx/scene/control/TextInputControl;",
        "B:",
        "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior",
        "<TT;>;>",
        "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase",
        "<TT;TB;>;"
    }
.end annotation


# static fields
.field private static final IS_FXVK_SUPPORTED:Z

.field protected static final SHOW_HANDLES:Z

.field private static USE_FXVK:Z

.field static preload:Z

.field static vkType:I


# instance fields
.field private blink:Ljavafx/beans/property/BooleanProperty;

.field private caretBlinking:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;

.field protected caretHandle:Ljavafx/scene/layout/StackPane;

.field protected final caretPath:Ljavafx/scene/shape/Path;

.field protected caretVisible:Ljavafx/beans/value/ObservableBooleanValue;

.field final copyMI:Ljavafx/scene/control/MenuItem;

.field final cutMI:Ljavafx/scene/control/MenuItem;

.field final deleteMI:Ljavafx/scene/control/MenuItem;

.field protected final displayCaret:Ljavafx/beans/property/BooleanProperty;

.field protected final fontMetrics:Ljavafx/beans/value/ObservableObjectValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ObservableObjectValue",
            "<",
            "Lcom/sun/javafx/tk/FontMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private forwardBias:Ljavafx/beans/property/BooleanProperty;

.field protected final highlightFill:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation
.end field

.field protected final highlightTextFill:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private imattrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/shape/Shape;",
            ">;"
        }
    .end annotation
.end field

.field private imlength:I

.field private imstart:I

.field final pasteMI:Ljavafx/scene/control/MenuItem;

.field protected final promptTextFill:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation
.end field

.field final redoMI:Ljavafx/scene/control/MenuItem;

.field final selectAllMI:Ljavafx/scene/control/MenuItem;

.field final selectWordMI:Ljavafx/scene/control/MenuItem;

.field protected selectionHandle1:Ljavafx/scene/layout/StackPane;

.field protected selectionHandle2:Ljavafx/scene/layout/StackPane;

.field final separatorMI:Ljavafx/scene/control/MenuItem;

.field protected final textFill:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation
.end field

.field final undoMI:Ljavafx/scene/control/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->preload:Z

    .line 98
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$$Lambda$3;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 113
    sget-boolean v0, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->IS_TOUCH_SUPPORTED:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isIOS()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->SHOW_HANDLES:Z

    .line 246
    sget-object v0, Ljavafx/application/ConditionalFeature;->VIRTUAL_KEYBOARD:Ljavafx/application/ConditionalFeature;

    invoke-static {v0}, Ljavafx/application/Platform;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->IS_FXVK_SUPPORTED:Z

    .line 247
    sget-boolean v0, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->IS_FXVK_SUPPORTED:Z

    sput-boolean v0, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->USE_FXVK:Z

    .line 250
    const/4 v0, -0x1

    sput v0, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->vkType:I

    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljavafx/scene/control/TextInputControl;Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TB;)V"
        }
    .end annotation

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    move-object v1, p1

    .local v1, "textInput":Ljavafx/scene/control/TextInputControl;, "TT;"
    move-object v2, p2

    .local v2, "behavior":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "TB;"
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;-><init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 120
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$1;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    sget-object v9, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$1;-><init>(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;Ljavafx/scene/paint/Paint;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->textFill:Ljavafx/beans/property/ObjectProperty;

    .line 134
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$2;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    sget-object v9, Ljavafx/scene/paint/Color;->GRAY:Ljavafx/scene/paint/Color;

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$2;-><init>(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;Ljavafx/scene/paint/Paint;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->promptTextFill:Ljavafx/beans/property/ObjectProperty;

    .line 151
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$3;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    sget-object v9, Ljavafx/scene/paint/Color;->DODGERBLUE:Ljavafx/scene/paint/Color;

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$3;-><init>(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;Ljavafx/scene/paint/Paint;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->highlightFill:Ljavafx/beans/property/ObjectProperty;

    .line 169
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$4;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    sget-object v9, Ljavafx/scene/paint/Color;->WHITE:Ljavafx/scene/paint/Color;

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$4;-><init>(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;Ljavafx/scene/paint/Paint;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->highlightTextFill:Ljavafx/beans/property/ObjectProperty;

    .line 187
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$5;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$5;-><init>(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;Z)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->displayCaret:Ljavafx/beans/property/BooleanProperty;

    .line 201
    move-object v5, v0

    new-instance v6, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    const-string v9, "forwardBias"

    const/4 v10, 0x1

    invoke-direct {v7, v8, v9, v10}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->forwardBias:Ljavafx/beans/property/BooleanProperty;

    .line 212
    move-object v5, v0

    new-instance v6, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    const-string v9, "blink"

    const/4 v10, 0x1

    invoke-direct {v7, v8, v9, v10}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->blink:Ljavafx/beans/property/BooleanProperty;

    .line 214
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->blink:Ljavafx/beans/property/BooleanProperty;

    invoke-direct {v7, v8}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;-><init>(Ljavafx/beans/property/BooleanProperty;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->caretBlinking:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;

    .line 222
    move-object v5, v0

    new-instance v6, Ljavafx/scene/shape/Path;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljavafx/scene/shape/Path;-><init>()V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->caretPath:Ljavafx/scene/shape/Path;

    .line 224
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    .line 225
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    .line 226
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    .line 489
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->imattrs:Ljava/util/List;

    .line 675
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$ContextMenuItem;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    const-string v9, "Undo"

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$ContextMenuItem;-><init>(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;Ljava/lang/String;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->undoMI:Ljavafx/scene/control/MenuItem;

    .line 676
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$ContextMenuItem;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    const-string v9, "Redo"

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$ContextMenuItem;-><init>(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;Ljava/lang/String;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->redoMI:Ljavafx/scene/control/MenuItem;

    .line 677
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$ContextMenuItem;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    const-string v9, "Cut"

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$ContextMenuItem;-><init>(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;Ljava/lang/String;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->cutMI:Ljavafx/scene/control/MenuItem;

    .line 678
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$ContextMenuItem;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    const-string v9, "Copy"

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$ContextMenuItem;-><init>(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;Ljava/lang/String;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->copyMI:Ljavafx/scene/control/MenuItem;

    .line 679
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$ContextMenuItem;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    const-string v9, "Paste"

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$ContextMenuItem;-><init>(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;Ljava/lang/String;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->pasteMI:Ljavafx/scene/control/MenuItem;

    .line 680
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$ContextMenuItem;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    const-string v9, "DeleteSelection"

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$ContextMenuItem;-><init>(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;Ljava/lang/String;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->deleteMI:Ljavafx/scene/control/MenuItem;

    .line 681
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$ContextMenuItem;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    const-string v9, "SelectWord"

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$ContextMenuItem;-><init>(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;Ljava/lang/String;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->selectWordMI:Ljavafx/scene/control/MenuItem;

    .line 682
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$ContextMenuItem;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    const-string v9, "SelectAll"

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$ContextMenuItem;-><init>(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;Ljava/lang/String;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->selectAllMI:Ljavafx/scene/control/MenuItem;

    .line 683
    move-object v5, v0

    new-instance v6, Ljavafx/scene/control/SeparatorMenuItem;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljavafx/scene/control/SeparatorMenuItem;-><init>()V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->separatorMI:Ljavafx/scene/control/MenuItem;

    .line 268
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$6;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$6;-><init>(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;Ljavafx/scene/control/TextInputControl;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->fontMetrics:Ljavafx/beans/value/ObservableObjectValue;

    .line 284
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$7;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$7;-><init>(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;Ljavafx/scene/control/TextInputControl;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->caretVisible:Ljavafx/beans/value/ObservableBooleanValue;

    .line 296
    sget-boolean v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->SHOW_HANDLES:Z

    if-eqz v5, :cond_0

    .line 297
    move-object v5, v0

    new-instance v6, Ljavafx/scene/layout/StackPane;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    .line 298
    move-object v5, v0

    new-instance v6, Ljavafx/scene/layout/StackPane;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    .line 299
    move-object v5, v0

    new-instance v6, Ljavafx/scene/layout/StackPane;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    .line 301
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/StackPane;->setManaged(Z)V

    .line 302
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/StackPane;->setManaged(Z)V

    .line 303
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/StackPane;->setManaged(Z)V

    .line 305
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v5

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$8;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$8;-><init>(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;Ljavafx/scene/control/TextInputControl;)V

    invoke-virtual {v5, v6}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 318
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v5

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$9;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$9;-><init>(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;Ljavafx/scene/control/TextInputControl;)V

    invoke-virtual {v5, v6}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 329
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v5

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$10;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$10;-><init>(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;Ljavafx/scene/control/TextInputControl;)V

    invoke-virtual {v5, v6}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 340
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    const-string v9, "caret-handle"

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v5

    .line 341
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    const-string v9, "selection-handle"

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v5

    .line 342
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    const-string v9, "selection-handle"

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v5

    .line 344
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    const-string v6, "selection-handle-1"

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/StackPane;->setId(Ljava/lang/String;)V

    .line 345
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    const-string v6, "selection-handle-2"

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/StackPane;->setId(Ljava/lang/String;)V

    .line 348
    :cond_0
    sget-boolean v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->IS_FXVK_SUPPORTED:Z

    if-eqz v5, :cond_2

    .line 349
    sget-boolean v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->preload:Z

    if-eqz v5, :cond_1

    .line 350
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl;->getScene()Ljavafx/scene/Scene;

    move-result-object v5

    move-object v3, v5

    .line 351
    .local v3, "scene":Ljavafx/scene/Scene;
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 352
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v5

    move-object v4, v5

    .line 353
    .local v4, "window":Ljavafx/stage/Window;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 354
    move-object v5, v1

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/FXVK;->init(Ljavafx/scene/Node;)V

    .line 358
    .end local v3    # "scene":Ljavafx/scene/Scene;
    .end local v4    # "window":Ljavafx/stage/Window;
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v5

    move-object v6, v0

    move-object v7, v1

    invoke-static {v6, v7}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;Ljavafx/scene/control/TextInputControl;)Ljavafx/beans/InvalidationListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 374
    :cond_2
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl;->getOnInputMethodTextChanged()Ljavafx/event/EventHandler;

    move-result-object v5

    if-nez v5, :cond_3

    .line 375
    move-object v5, v1

    move-object v6, v0

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;)Ljavafx/event/EventHandler;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TextInputControl;->setOnInputMethodTextChanged(Ljavafx/event/EventHandler;)V

    .line 380
    :cond_3
    move-object v5, v1

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;-><init>(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;Ljavafx/scene/control/TextInputControl;)V

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TextInputControl;->setInputMethodRequests(Ljavafx/scene/input/InputMethodRequests;)V

    .line 441
    return-void
.end method

.method static synthetic access$500(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->blink:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;
    return-object v0
.end method

.method static synthetic access$600(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;)I
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->imstart:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;
    return v0
.end method

.method static synthetic access$700(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;)I
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->imlength:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;
    return v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;Ljavafx/scene/control/TextInputControl;Ljavafx/beans/Observable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->lambda$new$189(Ljavafx/scene/control/TextInputControl;Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;Ljavafx/scene/input/InputMethodEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->lambda$new$190(Ljavafx/scene/input/InputMethodEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2()Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->lambda$static$188()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method private createInputMethodAttributes(Ljavafx/scene/input/InputMethodHighlight;II)V
    .locals 34

    .prologue
    .line 547
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    move-object/from16 v4, p1

    .local v4, "highlight":Ljavafx/scene/input/InputMethodHighlight;
    move/from16 v5, p2

    .local v5, "start":I
    move/from16 v6, p3

    .local v6, "end":I
    const-wide/16 v20, 0x0

    move-wide/from16 v7, v20

    .line 548
    .local v7, "minX":D
    const-wide/16 v20, 0x0

    move-wide/from16 v9, v20

    .line 549
    .local v9, "maxX":D
    const-wide/16 v20, 0x0

    move-wide/from16 v11, v20

    .line 550
    .local v11, "minY":D
    const-wide/16 v20, 0x0

    move-wide/from16 v13, v20

    .line 552
    .local v13, "maxY":D
    move-object/from16 v20, v3

    move/from16 v21, v5

    move/from16 v22, v6

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->getUnderlineShape(II)[Ljavafx/scene/shape/PathElement;

    move-result-object v20

    move-object/from16 v15, v20

    .line 553
    .local v15, "elements":[Ljavafx/scene/shape/PathElement;
    const/16 v20, 0x0

    move/from16 v16, v20

    .local v16, "i":I
    :goto_0
    move/from16 v20, v16

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_12

    .line 554
    move-object/from16 v20, v15

    move/from16 v21, v16

    aget-object v20, v20, v21

    move-object/from16 v17, v20

    .line 555
    .local v17, "pe":Ljavafx/scene/shape/PathElement;
    move-object/from16 v20, v17

    move-object/from16 v0, v20

    instance-of v0, v0, Ljavafx/scene/shape/MoveTo;

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 556
    move-object/from16 v20, v17

    check-cast v20, Ljavafx/scene/shape/MoveTo;

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/shape/MoveTo;->getX()D

    move-result-wide v20

    move-wide/from16 v32, v20

    move-wide/from16 v20, v32

    move-wide/from16 v22, v32

    move-wide/from16 v9, v22

    move-wide/from16 v7, v20

    .line 557
    move-object/from16 v20, v17

    check-cast v20, Ljavafx/scene/shape/MoveTo;

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/shape/MoveTo;->getY()D

    move-result-wide v20

    move-wide/from16 v32, v20

    move-wide/from16 v20, v32

    move-wide/from16 v22, v32

    move-wide/from16 v13, v22

    move-wide/from16 v11, v20

    .line 571
    :cond_0
    :goto_1
    move-object/from16 v20, v17

    move-object/from16 v0, v20

    instance-of v0, v0, Ljavafx/scene/shape/ClosePath;

    move/from16 v20, v0

    if-nez v20, :cond_1

    move/from16 v20, v16

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    move/from16 v20, v16

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    move-object/from16 v20, v15

    move/from16 v21, v16

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    instance-of v0, v0, Ljavafx/scene/shape/MoveTo;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 575
    :cond_1
    const/16 v20, 0x0

    move-object/from16 v18, v20

    .line 576
    .local v18, "attr":Ljavafx/scene/shape/Shape;
    move-object/from16 v20, v4

    sget-object v21, Ljavafx/scene/input/InputMethodHighlight;->SELECTED_RAW:Ljavafx/scene/input/InputMethodHighlight;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 578
    new-instance v20, Ljavafx/scene/shape/Path;

    move-object/from16 v32, v20

    move-object/from16 v20, v32

    move-object/from16 v21, v32

    invoke-direct/range {v21 .. v21}, Ljavafx/scene/shape/Path;-><init>()V

    move-object/from16 v18, v20

    .line 579
    move-object/from16 v20, v18

    check-cast v20, Ljavafx/scene/shape/Path;

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v20

    move-object/from16 v21, v3

    move/from16 v22, v5

    move/from16 v23, v6

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->getRangeShape(II)[Ljavafx/scene/shape/PathElement;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v20

    .line 580
    move-object/from16 v20, v18

    sget-object v21, Ljavafx/scene/paint/Color;->BLUE:Ljavafx/scene/paint/Color;

    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/shape/Shape;->setFill(Ljavafx/scene/paint/Paint;)V

    .line 581
    move-object/from16 v20, v18

    const-wide v21, 0x3fd3333340000000L    # 0.30000001192092896

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/shape/Shape;->setOpacity(D)V

    .line 602
    :cond_2
    :goto_2
    move-object/from16 v20, v18

    if-eqz v20, :cond_3

    .line 603
    move-object/from16 v20, v18

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/shape/Shape;->setManaged(Z)V

    .line 604
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->imattrs:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v21, v18

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v20

    .line 553
    .end local v18    # "attr":Ljavafx/scene/shape/Shape;
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 558
    :cond_4
    move-object/from16 v20, v17

    move-object/from16 v0, v20

    instance-of v0, v0, Ljavafx/scene/shape/LineTo;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 559
    move-wide/from16 v20, v7

    move-object/from16 v22, v17

    check-cast v22, Ljavafx/scene/shape/LineTo;

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/shape/LineTo;->getX()D

    move-result-wide v22

    cmpg-double v20, v20, v22

    if-gez v20, :cond_5

    move-wide/from16 v20, v7

    :goto_3
    move-wide/from16 v7, v20

    .line 560
    move-wide/from16 v20, v9

    move-object/from16 v22, v17

    check-cast v22, Ljavafx/scene/shape/LineTo;

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/shape/LineTo;->getX()D

    move-result-wide v22

    cmpl-double v20, v20, v22

    if-lez v20, :cond_6

    move-wide/from16 v20, v9

    :goto_4
    move-wide/from16 v9, v20

    .line 561
    move-wide/from16 v20, v11

    move-object/from16 v22, v17

    check-cast v22, Ljavafx/scene/shape/LineTo;

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/shape/LineTo;->getY()D

    move-result-wide v22

    cmpg-double v20, v20, v22

    if-gez v20, :cond_7

    move-wide/from16 v20, v11

    :goto_5
    move-wide/from16 v11, v20

    .line 562
    move-wide/from16 v20, v13

    move-object/from16 v22, v17

    check-cast v22, Ljavafx/scene/shape/LineTo;

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/shape/LineTo;->getY()D

    move-result-wide v22

    cmpl-double v20, v20, v22

    if-lez v20, :cond_8

    move-wide/from16 v20, v13

    :goto_6
    move-wide/from16 v13, v20

    goto/16 :goto_1

    .line 559
    :cond_5
    move-object/from16 v20, v17

    check-cast v20, Ljavafx/scene/shape/LineTo;

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/shape/LineTo;->getX()D

    move-result-wide v20

    goto :goto_3

    .line 560
    :cond_6
    move-object/from16 v20, v17

    check-cast v20, Ljavafx/scene/shape/LineTo;

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/shape/LineTo;->getX()D

    move-result-wide v20

    goto :goto_4

    .line 561
    :cond_7
    move-object/from16 v20, v17

    check-cast v20, Ljavafx/scene/shape/LineTo;

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/shape/LineTo;->getY()D

    move-result-wide v20

    goto :goto_5

    .line 562
    :cond_8
    move-object/from16 v20, v17

    check-cast v20, Ljavafx/scene/shape/LineTo;

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/shape/LineTo;->getY()D

    move-result-wide v20

    goto :goto_6

    .line 563
    :cond_9
    move-object/from16 v20, v17

    move-object/from16 v0, v20

    instance-of v0, v0, Ljavafx/scene/shape/HLineTo;

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 564
    move-wide/from16 v20, v7

    move-object/from16 v22, v17

    check-cast v22, Ljavafx/scene/shape/HLineTo;

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/shape/HLineTo;->getX()D

    move-result-wide v22

    cmpg-double v20, v20, v22

    if-gez v20, :cond_a

    move-wide/from16 v20, v7

    :goto_7
    move-wide/from16 v7, v20

    .line 565
    move-wide/from16 v20, v9

    move-object/from16 v22, v17

    check-cast v22, Ljavafx/scene/shape/HLineTo;

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/shape/HLineTo;->getX()D

    move-result-wide v22

    cmpl-double v20, v20, v22

    if-lez v20, :cond_b

    move-wide/from16 v20, v9

    :goto_8
    move-wide/from16 v9, v20

    goto/16 :goto_1

    .line 564
    :cond_a
    move-object/from16 v20, v17

    check-cast v20, Ljavafx/scene/shape/HLineTo;

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/shape/HLineTo;->getX()D

    move-result-wide v20

    goto :goto_7

    .line 565
    :cond_b
    move-object/from16 v20, v17

    check-cast v20, Ljavafx/scene/shape/HLineTo;

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/shape/HLineTo;->getX()D

    move-result-wide v20

    goto :goto_8

    .line 566
    :cond_c
    move-object/from16 v20, v17

    move-object/from16 v0, v20

    instance-of v0, v0, Ljavafx/scene/shape/VLineTo;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 567
    move-wide/from16 v20, v11

    move-object/from16 v22, v17

    check-cast v22, Ljavafx/scene/shape/VLineTo;

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/shape/VLineTo;->getY()D

    move-result-wide v22

    cmpg-double v20, v20, v22

    if-gez v20, :cond_d

    move-wide/from16 v20, v11

    :goto_9
    move-wide/from16 v11, v20

    .line 568
    move-wide/from16 v20, v13

    move-object/from16 v22, v17

    check-cast v22, Ljavafx/scene/shape/VLineTo;

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/shape/VLineTo;->getY()D

    move-result-wide v22

    cmpl-double v20, v20, v22

    if-lez v20, :cond_e

    move-wide/from16 v20, v13

    :goto_a
    move-wide/from16 v13, v20

    goto/16 :goto_1

    .line 567
    :cond_d
    move-object/from16 v20, v17

    check-cast v20, Ljavafx/scene/shape/VLineTo;

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/shape/VLineTo;->getY()D

    move-result-wide v20

    goto :goto_9

    .line 568
    :cond_e
    move-object/from16 v20, v17

    check-cast v20, Ljavafx/scene/shape/VLineTo;

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/shape/VLineTo;->getY()D

    move-result-wide v20

    goto :goto_a

    .line 582
    .restart local v18    # "attr":Ljavafx/scene/shape/Shape;
    :cond_f
    move-object/from16 v20, v4

    sget-object v21, Ljavafx/scene/input/InputMethodHighlight;->UNSELECTED_RAW:Ljavafx/scene/input/InputMethodHighlight;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 584
    new-instance v20, Ljavafx/scene/shape/Line;

    move-object/from16 v32, v20

    move-object/from16 v20, v32

    move-object/from16 v21, v32

    move-wide/from16 v22, v7

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    add-double v22, v22, v24

    move-wide/from16 v24, v13

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    add-double v24, v24, v26

    move-wide/from16 v26, v9

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    sub-double v26, v26, v28

    move-wide/from16 v28, v13

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    add-double v28, v28, v30

    invoke-direct/range {v21 .. v29}, Ljavafx/scene/shape/Line;-><init>(DDDD)V

    move-object/from16 v18, v20

    .line 585
    move-object/from16 v20, v18

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->textFill:Ljavafx/beans/property/ObjectProperty;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljavafx/scene/paint/Paint;

    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/shape/Shape;->setStroke(Ljavafx/scene/paint/Paint;)V

    .line 586
    move-object/from16 v20, v18

    move-wide/from16 v21, v13

    move-wide/from16 v23, v11

    sub-double v21, v21, v23

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/shape/Shape;->setStrokeWidth(D)V

    .line 587
    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/shape/Shape;->getStrokeDashArray()Ljavafx/collections/ObservableList;

    move-result-object v20

    move-object/from16 v19, v20

    .line 588
    .local v19, "dashArray":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljava/lang/Double;>;"
    move-object/from16 v20, v19

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v20

    .line 589
    move-object/from16 v20, v19

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v20

    .line 590
    goto/16 :goto_2

    .end local v19    # "dashArray":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljava/lang/Double;>;"
    :cond_10
    move-object/from16 v20, v4

    sget-object v21, Ljavafx/scene/input/InputMethodHighlight;->SELECTED_CONVERTED:Ljavafx/scene/input/InputMethodHighlight;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 592
    new-instance v20, Ljavafx/scene/shape/Line;

    move-object/from16 v32, v20

    move-object/from16 v20, v32

    move-object/from16 v21, v32

    move-wide/from16 v22, v7

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    add-double v22, v22, v24

    move-wide/from16 v24, v13

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    add-double v24, v24, v26

    move-wide/from16 v26, v9

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    sub-double v26, v26, v28

    move-wide/from16 v28, v13

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    add-double v28, v28, v30

    invoke-direct/range {v21 .. v29}, Ljavafx/scene/shape/Line;-><init>(DDDD)V

    move-object/from16 v18, v20

    .line 593
    move-object/from16 v20, v18

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->textFill:Ljavafx/beans/property/ObjectProperty;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljavafx/scene/paint/Paint;

    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/shape/Shape;->setStroke(Ljavafx/scene/paint/Paint;)V

    .line 594
    move-object/from16 v20, v18

    move-wide/from16 v21, v13

    move-wide/from16 v23, v11

    sub-double v21, v21, v23

    const-wide/high16 v23, 0x4008000000000000L    # 3.0

    mul-double v21, v21, v23

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/shape/Shape;->setStrokeWidth(D)V

    goto/16 :goto_2

    .line 595
    :cond_11
    move-object/from16 v20, v4

    sget-object v21, Ljavafx/scene/input/InputMethodHighlight;->UNSELECTED_CONVERTED:Ljavafx/scene/input/InputMethodHighlight;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 597
    new-instance v20, Ljavafx/scene/shape/Line;

    move-object/from16 v32, v20

    move-object/from16 v20, v32

    move-object/from16 v21, v32

    move-wide/from16 v22, v7

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    add-double v22, v22, v24

    move-wide/from16 v24, v13

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    add-double v24, v24, v26

    move-wide/from16 v26, v9

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    sub-double v26, v26, v28

    move-wide/from16 v28, v13

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    add-double v28, v28, v30

    invoke-direct/range {v21 .. v29}, Ljavafx/scene/shape/Line;-><init>(DDDD)V

    move-object/from16 v18, v20

    .line 598
    move-object/from16 v20, v18

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->textFill:Ljavafx/beans/property/ObjectProperty;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljavafx/scene/paint/Paint;

    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/shape/Shape;->setStroke(Ljavafx/scene/paint/Paint;)V

    .line 599
    move-object/from16 v20, v18

    move-wide/from16 v21, v13

    move-wide/from16 v23, v11

    sub-double v21, v21, v23

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/shape/Shape;->setStrokeWidth(D)V

    goto/16 :goto_2

    .line 608
    .end local v17    # "pe":Ljavafx/scene/shape/PathElement;
    .end local v18    # "attr":Ljavafx/scene/shape/Shape;
    :cond_12
    return-void
.end method

.method public static getClassCssMetaData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 833
    # getter for: Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$StyleableProperties;->access$800()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$new$189(Ljavafx/scene/control/TextInputControl;Ljavafx/beans/Observable;)V
    .locals 5

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    move-object v1, p1

    .local v1, "textInput":Ljavafx/scene/control/TextInputControl;
    move-object v2, p2

    .local v2, "observable":Ljavafx/beans/Observable;
    sget-boolean v4, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->USE_FXVK:Z

    if-eqz v4, :cond_0

    .line 360
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    move-object v3, v4

    .line 361
    .local v3, "scene":Ljavafx/scene/Scene;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->isEditable()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 362
    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/FXVK;->attach(Ljavafx/scene/Node;)V

    .line 371
    .end local v3    # "scene":Ljavafx/scene/Scene;
    :cond_0
    :goto_0
    return-void

    .line 363
    .restart local v3    # "scene":Ljavafx/scene/Scene;
    :cond_1
    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v3

    .line 364
    invoke-virtual {v4}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v4, v3

    .line 365
    invoke-virtual {v4}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/stage/Window;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v3

    .line 366
    invoke-virtual {v4}, Ljavafx/scene/Scene;->getFocusOwner()Ljavafx/scene/Node;

    move-result-object v4

    instance-of v4, v4, Ljavafx/scene/control/TextInputControl;

    if-eqz v4, :cond_2

    move-object v4, v3

    .line 367
    invoke-virtual {v4}, Ljavafx/scene/Scene;->getFocusOwner()Ljavafx/scene/Node;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->isEditable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 368
    :cond_2
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVK;->detach()V

    goto :goto_0
.end method

.method private synthetic lambda$new$190(Ljavafx/scene/input/InputMethodEvent;)V
    .locals 4

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/InputMethodEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->handleInputMethodEvent(Ljavafx/scene/input/InputMethodEvent;)V

    .line 377
    return-void
.end method

.method private static synthetic lambda$static$188()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 99
    const-string v1, "com.sun.javafx.virtualKeyboard.preload"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 100
    .local v0, "s":Ljava/lang/String;
    move-object v1, v0

    if-eqz v1, :cond_0

    .line 101
    move-object v1, v0

    const-string v2, "PRERENDER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->preload:Z

    .line 105
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "s":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method protected abstract addHighlight(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/Node;",
            ">;I)V"
        }
    .end annotation
.end method

.method protected varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 845
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    move-object v1, p1

    .local v1, "action":Ljavafx/scene/AccessibleAction;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$12;->$SwitchMap$javafx$scene$AccessibleAction:[I

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 856
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 858
    :cond_0
    :goto_0
    return-void

    .line 847
    :pswitch_0
    move-object v5, v2

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/Integer;

    move-object v3, v5

    .line 848
    .local v3, "start":Ljava/lang/Integer;
    move-object v5, v2

    const/4 v6, 0x1

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/Integer;

    move-object v4, v5

    .line 849
    .local v4, "end":Ljava/lang/Integer;
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v4

    if-eqz v5, :cond_0

    .line 850
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->scrollCharacterToVisible(I)V

    .line 851
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->scrollCharacterToVisible(I)V

    .line 852
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->scrollCharacterToVisible(I)V

    goto :goto_0

    .line 845
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public forwardBiasProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->forwardBias:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    return-object v0
.end method

.method public getCharacter(I)C
    .locals 3

    .prologue
    .line 454
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    move v1, p1

    .local v1, "index":I
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    return v0
.end method

.method public getCharacterBounds(I)Ljavafx/geometry/Rectangle2D;
    .locals 3

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    move v1, p1

    .local v1, "index":I
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    return-object v0
.end method

.method public getCssMetaData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 841
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    return-object v0
.end method

.method public getInsertionPoint(DD)I
    .locals 7

    .prologue
    .line 462
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    move-wide v2, p1

    .local v2, "x":D
    move-wide v4, p3

    .local v4, "y":D
    const/4 v6, 0x0

    move v1, v6

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    return v1
.end method

.method public getMenuPosition()Ljavafx/geometry/Point2D;
    .locals 13

    .prologue
    .line 229
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    sget-boolean v2, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->SHOW_HANDLES:Z

    if-eqz v2, :cond_2

    .line 230
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    new-instance v2, Ljavafx/geometry/Point2D;

    move-object v12, v2

    move-object v2, v12

    move-object v3, v12

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v4}, Ljavafx/scene/layout/StackPane;->getLayoutX()D

    move-result-wide v4

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v6}, Ljavafx/scene/layout/StackPane;->getWidth()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    .line 232
    invoke-virtual {v6}, Ljavafx/scene/layout/StackPane;->getLayoutY()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v2

    .line 238
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    :goto_0
    return-object v1

    .line 233
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    new-instance v2, Ljavafx/geometry/Point2D;

    move-object v12, v2

    move-object v2, v12

    move-object v3, v12

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v4}, Ljavafx/scene/layout/StackPane;->getLayoutX()D

    move-result-wide v4

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v6}, Ljavafx/scene/layout/StackPane;->getWidth()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    .line 235
    invoke-virtual {v6}, Ljavafx/scene/layout/StackPane;->getLayoutX()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v6}, Ljavafx/scene/layout/StackPane;->getWidth()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    .line 236
    invoke-virtual {v6}, Ljavafx/scene/layout/StackPane;->getLayoutY()D

    move-result-wide v6

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v8}, Ljavafx/scene/layout/StackPane;->getHeight()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v2

    goto :goto_0

    .line 238
    :cond_1
    const/4 v2, 0x0

    move-object v1, v2

    goto :goto_0

    .line 241
    :cond_2
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v12, v2

    move-object v2, v12

    move-object v3, v12

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method protected abstract getRangeShape(II)[Ljavafx/scene/shape/PathElement;
.end method

.method protected abstract getUnderlineShape(II)[Ljavafx/scene/shape/PathElement;
.end method

.method protected handleInputMethodEvent(Ljavafx/scene/input/InputMethodEvent;)V
    .locals 13

    .prologue
    .line 492
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/InputMethodEvent;
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/TextInputControl;

    move-object v2, v8

    .line 493
    .local v2, "textInput":Ljavafx/scene/control/TextInputControl;
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/control/TextInputControl;->isEditable()Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/control/TextInputControl;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/beans/property/StringProperty;->isBound()Z

    move-result v8

    if-nez v8, :cond_5

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/control/TextInputControl;->isDisabled()Z

    move-result v8

    if-nez v8, :cond_5

    .line 496
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isIOS()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 497
    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/input/InputMethodEvent;->getCommitted()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavafx/scene/control/TextInputControl;->setText(Ljava/lang/String;)V

    .line 498
    .line 538
    :goto_0
    return-void

    .line 502
    :cond_0
    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->imlength:I

    if-eqz v8, :cond_1

    .line 503
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->imattrs:Ljava/util/List;

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->removeHighlight(Ljava/util/List;)V

    .line 504
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->imattrs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 505
    move-object v8, v2

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->imstart:I

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->imstart:I

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->imlength:I

    add-int/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TextInputControl;->selectRange(II)V

    .line 509
    :cond_1
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/InputMethodEvent;->getCommitted()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    .line 510
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/InputMethodEvent;->getCommitted()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 511
    .local v3, "committed":Ljava/lang/String;
    move-object v8, v2

    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/control/TextInputControl;->getSelection()Ljavafx/scene/control/IndexRange;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TextInputControl;->replaceText(Ljavafx/scene/control/IndexRange;Ljava/lang/String;)V

    .line 515
    .end local v3    # "committed":Ljava/lang/String;
    :cond_2
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/control/TextInputControl;->getSelection()Ljavafx/scene/control/IndexRange;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/scene/control/IndexRange;->getStart()I

    move-result v9

    iput v9, v8, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->imstart:I

    .line 516
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v8

    .line 517
    .local v3, "composed":Ljava/lang/StringBuilder;
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/InputMethodEvent;->getComposed()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    :goto_1
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/input/InputMethodTextRun;

    move-object v5, v8

    .line 518
    .local v5, "run":Ljavafx/scene/input/InputMethodTextRun;
    move-object v8, v3

    move-object v9, v5

    invoke-virtual {v9}, Ljavafx/scene/input/InputMethodTextRun;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 519
    goto :goto_1

    .line 520
    .end local v5    # "run":Ljavafx/scene/input/InputMethodTextRun;
    :cond_3
    move-object v8, v2

    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/control/TextInputControl;->getSelection()Ljavafx/scene/control/IndexRange;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TextInputControl;->replaceText(Ljavafx/scene/control/IndexRange;Ljava/lang/String;)V

    .line 521
    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    iput v9, v8, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->imlength:I

    .line 522
    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->imlength:I

    if-eqz v8, :cond_5

    .line 523
    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->imstart:I

    move v4, v8

    .line 524
    .local v4, "pos":I
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/InputMethodEvent;->getComposed()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    :goto_2
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/input/InputMethodTextRun;

    move-object v6, v8

    .line 525
    .local v6, "run":Ljavafx/scene/input/InputMethodTextRun;
    move v8, v4

    move-object v9, v6

    invoke-virtual {v9}, Ljavafx/scene/input/InputMethodTextRun;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    move v7, v8

    .line 526
    .local v7, "endPos":I
    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v9}, Ljavafx/scene/input/InputMethodTextRun;->getHighlight()Ljavafx/scene/input/InputMethodHighlight;

    move-result-object v9

    move v10, v4

    move v11, v7

    invoke-direct {v8, v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->createInputMethodAttributes(Ljavafx/scene/input/InputMethodHighlight;II)V

    .line 527
    move v8, v7

    move v4, v8

    .line 528
    goto :goto_2

    .line 529
    .end local v6    # "run":Ljavafx/scene/input/InputMethodTextRun;
    .end local v7    # "endPos":I
    :cond_4
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->imattrs:Ljava/util/List;

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->imstart:I

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->addHighlight(Ljava/util/List;I)V

    .line 532
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/InputMethodEvent;->getCaretPosition()I

    move-result v8

    move v5, v8

    .line 533
    .local v5, "caretPos":I
    move v8, v5

    if-ltz v8, :cond_5

    move v8, v5

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->imlength:I

    if-ge v8, v9, :cond_5

    .line 534
    move-object v8, v2

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->imstart:I

    move v10, v5

    add-int/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->imstart:I

    move v11, v5

    add-int/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TextInputControl;->selectRange(II)V

    .line 538
    .end local v3    # "composed":Ljava/lang/StringBuilder;
    .end local v4    # "pos":I
    .end local v5    # "caretPos":I
    :cond_5
    goto/16 :goto_0
.end method

.method protected invalidateMetrics()V
    .locals 0

    .prologue
    .line 479
    .local p0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    return-void
.end method

.method public isForwardBias()Z
    .locals 2

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->forwardBias:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    return v0
.end method

.method protected isRTL()Z
    .locals 3

    .prologue
    .line 611
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v1}, Ljavafx/scene/control/TextInputControl;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v1

    sget-object v2, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected maskText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    move-object v1, p1

    .local v1, "txt":Ljava/lang/String;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    return-object v0
.end method

.method public abstract nextCharacterVisually(Z)V
.end method

.method public populateContextMenu(Ljavafx/scene/control/ContextMenu;)V
    .locals 14

    .prologue
    .line 686
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    move-object v1, p1

    .local v1, "contextMenu":Ljavafx/scene/control/ContextMenu;
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/TextInputControl;

    move-object v2, v8

    .line 687
    .local v2, "textInputControl":Ljavafx/scene/control/TextInputControl;
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/control/TextInputControl;->isEditable()Z

    move-result v8

    move v3, v8

    .line 688
    .local v3, "editable":Z
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/control/TextInputControl;->getLength()I

    move-result v8

    if-lez v8, :cond_5

    const/4 v8, 0x1

    :goto_0
    move v4, v8

    .line 689
    .local v4, "hasText":Z
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/control/TextInputControl;->getSelection()Ljavafx/scene/control/IndexRange;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/scene/control/IndexRange;->getLength()I

    move-result v8

    if-lez v8, :cond_6

    const/4 v8, 0x1

    :goto_1
    move v5, v8

    .line 690
    .local v5, "hasSelection":Z
    move-object v8, v0

    const-string v9, "A"

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->maskText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "A"

    if-eq v8, v9, :cond_7

    const/4 v8, 0x1

    :goto_2
    move v6, v8

    .line 691
    .local v6, "maskText":Z
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v8

    move-object v7, v8

    .line 693
    .local v7, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/MenuItem;>;"
    sget-boolean v8, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->SHOW_HANDLES:Z

    if-eqz v8, :cond_8

    .line 694
    move-object v8, v7

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->clear()V

    .line 695
    move v8, v6

    if-nez v8, :cond_1

    move v8, v5

    if-eqz v8, :cond_1

    .line 696
    move v8, v3

    if-eqz v8, :cond_0

    .line 697
    move-object v8, v7

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->cutMI:Ljavafx/scene/control/MenuItem;

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 699
    :cond_0
    move-object v8, v7

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->copyMI:Ljavafx/scene/control/MenuItem;

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 701
    :cond_1
    move v8, v3

    if-eqz v8, :cond_2

    invoke-static {}, Ljavafx/scene/input/Clipboard;->getSystemClipboard()Ljavafx/scene/input/Clipboard;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/scene/input/Clipboard;->hasString()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 702
    move-object v8, v7

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->pasteMI:Ljavafx/scene/control/MenuItem;

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 704
    :cond_2
    move v8, v4

    if-eqz v8, :cond_4

    .line 705
    move v8, v5

    if-nez v8, :cond_3

    .line 706
    move-object v8, v7

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->selectWordMI:Ljavafx/scene/control/MenuItem;

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 708
    :cond_3
    move-object v8, v7

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->selectAllMI:Ljavafx/scene/control/MenuItem;

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 710
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->selectWordMI:Ljavafx/scene/control/MenuItem;

    invoke-virtual {v8}, Ljavafx/scene/control/MenuItem;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v8

    const-string v9, "refreshMenu"

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v9, v10}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 711
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->selectAllMI:Ljavafx/scene/control/MenuItem;

    invoke-virtual {v8}, Ljavafx/scene/control/MenuItem;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v8

    const-string v9, "refreshMenu"

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v9, v10}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 726
    :goto_3
    return-void

    .line 688
    .end local v4    # "hasText":Z
    .end local v5    # "hasSelection":Z
    .end local v6    # "maskText":Z
    .end local v7    # "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/MenuItem;>;"
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 689
    .restart local v4    # "hasText":Z
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 690
    .restart local v5    # "hasSelection":Z
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 713
    .restart local v6    # "maskText":Z
    .restart local v7    # "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/MenuItem;>;"
    :cond_8
    move v8, v3

    if-eqz v8, :cond_b

    .line 714
    move-object v8, v7

    const/16 v9, 0x8

    new-array v9, v9, [Ljavafx/scene/control/MenuItem;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->undoMI:Ljavafx/scene/control/MenuItem;

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->redoMI:Ljavafx/scene/control/MenuItem;

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->cutMI:Ljavafx/scene/control/MenuItem;

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x3

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->copyMI:Ljavafx/scene/control/MenuItem;

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x4

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->pasteMI:Ljavafx/scene/control/MenuItem;

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x5

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->deleteMI:Ljavafx/scene/control/MenuItem;

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x6

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->separatorMI:Ljavafx/scene/control/MenuItem;

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x7

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->selectAllMI:Ljavafx/scene/control/MenuItem;

    aput-object v12, v10, v11

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v8

    .line 719
    :goto_4
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->undoMI:Ljavafx/scene/control/MenuItem;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v9}, Ljavafx/scene/control/TextInputControl;->isUndoable()Z

    move-result v9

    if-nez v9, :cond_c

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {v8, v9}, Ljavafx/scene/control/MenuItem;->setDisable(Z)V

    .line 720
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->redoMI:Ljavafx/scene/control/MenuItem;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v9}, Ljavafx/scene/control/TextInputControl;->isRedoable()Z

    move-result v9

    if-nez v9, :cond_d

    const/4 v9, 0x1

    :goto_6
    invoke-virtual {v8, v9}, Ljavafx/scene/control/MenuItem;->setDisable(Z)V

    .line 721
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->cutMI:Ljavafx/scene/control/MenuItem;

    move v9, v6

    if-nez v9, :cond_9

    move v9, v5

    if-nez v9, :cond_e

    :cond_9
    const/4 v9, 0x1

    :goto_7
    invoke-virtual {v8, v9}, Ljavafx/scene/control/MenuItem;->setDisable(Z)V

    .line 722
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->copyMI:Ljavafx/scene/control/MenuItem;

    move v9, v6

    if-nez v9, :cond_a

    move v9, v5

    if-nez v9, :cond_f

    :cond_a
    const/4 v9, 0x1

    :goto_8
    invoke-virtual {v8, v9}, Ljavafx/scene/control/MenuItem;->setDisable(Z)V

    .line 723
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->pasteMI:Ljavafx/scene/control/MenuItem;

    invoke-static {}, Ljavafx/scene/input/Clipboard;->getSystemClipboard()Ljavafx/scene/input/Clipboard;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/scene/input/Clipboard;->hasString()Z

    move-result v9

    if-nez v9, :cond_10

    const/4 v9, 0x1

    :goto_9
    invoke-virtual {v8, v9}, Ljavafx/scene/control/MenuItem;->setDisable(Z)V

    .line 724
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->deleteMI:Ljavafx/scene/control/MenuItem;

    move v9, v5

    if-nez v9, :cond_11

    const/4 v9, 0x1

    :goto_a
    invoke-virtual {v8, v9}, Ljavafx/scene/control/MenuItem;->setDisable(Z)V

    goto/16 :goto_3

    .line 717
    :cond_b
    move-object v8, v7

    const/4 v9, 0x3

    new-array v9, v9, [Ljavafx/scene/control/MenuItem;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->copyMI:Ljavafx/scene/control/MenuItem;

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->separatorMI:Ljavafx/scene/control/MenuItem;

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->selectAllMI:Ljavafx/scene/control/MenuItem;

    aput-object v12, v10, v11

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v8

    goto/16 :goto_4

    .line 719
    :cond_c
    const/4 v9, 0x0

    goto :goto_5

    .line 720
    :cond_d
    const/4 v9, 0x0

    goto :goto_6

    .line 721
    :cond_e
    const/4 v9, 0x0

    goto :goto_7

    .line 722
    :cond_f
    const/4 v9, 0x0

    goto :goto_8

    .line 723
    :cond_10
    const/4 v9, 0x0

    goto :goto_9

    .line 724
    :cond_11
    const/4 v9, 0x0

    goto :goto_a
.end method

.method protected abstract removeHighlight(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/Node;",
            ">;)V"
        }
    .end annotation
.end method

.method public scrollCharacterToVisible(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 476
    .local p0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    return-void
.end method

.method public setCaretAnimating(Z)V
    .locals 4

    .prologue
    .line 615
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    move v1, p1

    .local v1, "value":Z
    move v2, v1

    if-eqz v2, :cond_0

    .line 616
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->caretBlinking:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;->start()V

    .line 621
    :goto_0
    return-void

    .line 618
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->caretBlinking:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;->stop()V

    .line 619
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->blink:Ljavafx/beans/property/BooleanProperty;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    goto :goto_0
.end method

.method public setForwardBias(Z)V
    .locals 4

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    move v1, p1

    .local v1, "isLeading":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->forwardBias:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 207
    return-void
.end method

.method public toggleUseVK()V
    .locals 5

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    sget v1, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->vkType:I

    const/4 v2, 0x1

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->vkType:I

    .line 253
    sget v1, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->vkType:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 254
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->USE_FXVK:Z

    .line 255
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v1}, Ljavafx/scene/control/TextInputControl;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v1

    const-string v2, "vkType"

    sget-object v3, Lcom/sun/javafx/scene/control/skin/FXVK;->VK_TYPE_NAMES:[Ljava/lang/String;

    sget v4, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->vkType:I

    aget-object v3, v3, v4

    invoke-interface {v1, v2, v3}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 256
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/FXVK;->attach(Ljavafx/scene/Node;)V

    .line 262
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVK;->detach()V

    .line 259
    const/4 v1, -0x1

    sput v1, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->vkType:I

    .line 260
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->USE_FXVK:Z

    goto :goto_0
.end method

.method protected updateHighlightFill()V
    .locals 0

    .prologue
    .line 482
    .local p0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    return-void
.end method

.method protected updateHighlightTextFill()V
    .locals 0

    .prologue
    .line 483
    .local p0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    return-void
.end method

.method protected updateTextFill()V
    .locals 0

    .prologue
    .line 481
    .local p0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>;"
    return-void
.end method
