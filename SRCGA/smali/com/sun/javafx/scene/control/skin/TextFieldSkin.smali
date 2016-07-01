.class public Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
.super Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;
.source "TextFieldSkin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin",
        "<",
        "Ljavafx/scene/control/TextField;",
        "Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;",
        ">;"
    }
.end annotation


# static fields
.field public static final BULLET:C = '\u25cf'


# instance fields
.field private caretWidth:D

.field private characterBoundingPath:Ljavafx/scene/shape/Path;

.field private clip:Ljavafx/scene/shape/Rectangle;

.field private handleGroup:Ljavafx/scene/Group;

.field private pressX:D

.field private pressY:D

.field private promptNode:Ljavafx/scene/text/Text;

.field private selectionHighlightPath:Ljavafx/scene/shape/Path;

.field private textGroup:Ljavafx/scene/layout/Pane;

.field private textNode:Ljavafx/scene/text/Text;

.field protected textRight:Ljavafx/beans/value/ObservableDoubleValue;

.field private textTranslateX:Ljavafx/beans/property/DoubleProperty;

.field private usePromptText:Ljavafx/beans/value/ObservableBooleanValue;


# direct methods
.method public constructor <init>(Ljavafx/scene/control/TextField;)V
    .locals 8

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v1, p1

    .local v1, "textField":Ljavafx/scene/control/TextField;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    instance-of v4, v4, Ljavafx/scene/control/PasswordField;

    if-eqz v4, :cond_0

    new-instance v4, Lcom/sun/javafx/scene/control/behavior/PasswordFieldBehavior;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    check-cast v6, Ljavafx/scene/control/PasswordField;

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/behavior/PasswordFieldBehavior;-><init>(Ljavafx/scene/control/PasswordField;)V

    :goto_0
    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;-><init>(Ljavafx/scene/control/TextField;Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;)V

    .line 131
    return-void

    .line 128
    :cond_0
    new-instance v4, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;-><init>(Ljavafx/scene/control/TextField;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljavafx/scene/control/TextField;Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;)V
    .locals 16

    .prologue
    .line 134
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object/from16 v2, p1

    .local v2, "textField":Ljavafx/scene/control/TextField;
    move-object/from16 v3, p2

    .local v3, "behavior":Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;
    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;-><init>(Ljavafx/scene/control/TextInputControl;Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;)V

    .line 70
    move-object v5, v1

    new-instance v6, Ljavafx/scene/layout/Pane;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    invoke-direct {v7}, Ljavafx/scene/layout/Pane;-><init>()V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textGroup:Ljavafx/scene/layout/Pane;

    .line 77
    move-object v5, v1

    new-instance v6, Ljavafx/scene/shape/Rectangle;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    invoke-direct {v7}, Ljavafx/scene/shape/Rectangle;-><init>()V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->clip:Ljavafx/scene/shape/Rectangle;

    .line 84
    move-object v5, v1

    new-instance v6, Ljavafx/scene/text/Text;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    invoke-direct {v7}, Ljavafx/scene/text/Text;-><init>()V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    .line 97
    move-object v5, v1

    new-instance v6, Ljavafx/scene/shape/Path;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    invoke-direct {v7}, Ljavafx/scene/shape/Path;-><init>()V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHighlightPath:Ljavafx/scene/shape/Path;

    .line 99
    move-object v5, v1

    new-instance v6, Ljavafx/scene/shape/Path;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    invoke-direct {v7}, Ljavafx/scene/shape/Path;-><init>()V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->characterBoundingPath:Ljavafx/scene/shape/Path;

    .line 101
    move-object v5, v1

    new-instance v6, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v8, v1

    const-string v9, "textTranslateX"

    invoke-direct {v7, v8, v9}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textTranslateX:Ljavafx/beans/property/DoubleProperty;

    .line 135
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->setTextFieldSkin(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;)V

    .line 138
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TextField;->caretPositionProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v5

    move-object v6, v1

    move-object v7, v2

    invoke-static {v6, v7}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;Ljavafx/scene/control/TextField;)Ljavafx/beans/value/ChangeListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/beans/property/ReadOnlyIntegerProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 148
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->forwardBiasProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v5

    move-object v6, v1

    move-object v7, v2

    invoke-static {v6, v7}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;Ljavafx/scene/control/TextField;)Ljavafx/beans/InvalidationListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 155
    move-object v5, v1

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$1;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$1;-><init>(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textRight:Ljavafx/beans/value/ObservableDoubleValue;

    .line 163
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->clip:Ljavafx/scene/shape/Rectangle;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/shape/Rectangle;->setSmooth(Z)V

    .line 164
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->clip:Ljavafx/scene/shape/Rectangle;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/shape/Rectangle;->setX(D)V

    .line 165
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->clip:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v5}, Ljavafx/scene/shape/Rectangle;->widthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textGroup:Ljavafx/scene/layout/Pane;

    invoke-virtual {v6}, Ljavafx/scene/layout/Pane;->widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 166
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->clip:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v5}, Ljavafx/scene/shape/Rectangle;->heightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textGroup:Ljavafx/scene/layout/Pane;

    invoke-virtual {v6}, Ljavafx/scene/layout/Pane;->heightProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 169
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textGroup:Ljavafx/scene/layout/Pane;

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->clip:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/Pane;->setClip(Ljavafx/scene/Node;)V

    .line 173
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textGroup:Ljavafx/scene/layout/Pane;

    invoke-virtual {v5}, Ljavafx/scene/layout/Pane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljavafx/scene/Node;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    const/4 v8, 0x0

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHighlightPath:Ljavafx/scene/shape/Path;

    aput-object v9, v7, v8

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    const/4 v8, 0x1

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    aput-object v9, v7, v8

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    const/4 v8, 0x2

    new-instance v9, Ljavafx/scene/Group;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x1

    new-array v11, v11, [Ljavafx/scene/Node;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretPath:Ljavafx/scene/shape/Path;

    aput-object v14, v12, v13

    invoke-direct {v10, v11}, Ljavafx/scene/Group;-><init>([Ljavafx/scene/Node;)V

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v5

    .line 174
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textGroup:Ljavafx/scene/layout/Pane;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 175
    sget-boolean v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->SHOW_HANDLES:Z

    if-eqz v5, :cond_0

    .line 176
    move-object v5, v1

    new-instance v6, Ljavafx/scene/Group;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    invoke-direct {v7}, Ljavafx/scene/Group;-><init>()V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->handleGroup:Ljavafx/scene/Group;

    .line 177
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->handleGroup:Ljavafx/scene/Group;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/Group;->setManaged(Z)V

    .line 178
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->handleGroup:Ljavafx/scene/Group;

    invoke-virtual {v5}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljavafx/scene/Node;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    const/4 v8, 0x0

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    aput-object v9, v7, v8

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    const/4 v8, 0x1

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    aput-object v9, v7, v8

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    const/4 v8, 0x2

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v5

    .line 179
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->handleGroup:Ljavafx/scene/Group;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 183
    :cond_0
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/text/Text;->setManaged(Z)V

    .line 184
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v5}, Ljavafx/scene/text/Text;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    const-string v6, "text"

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 185
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v5}, Ljavafx/scene/text/Text;->fontProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TextField;->fontProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 187
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v5}, Ljavafx/scene/text/Text;->layoutXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textTranslateX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v5, v6}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 188
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v5}, Ljavafx/scene/text/Text;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v5

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$2;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$2;-><init>(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;Ljavafx/scene/control/TextField;)V

    invoke-virtual {v5, v6}, Ljavafx/beans/property/StringProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 194
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v5}, Ljavafx/scene/text/Text;->fillProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textFill:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v5, v6}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 195
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v5}, Ljavafx/scene/text/Text;->impl_selectionFillProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v5

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$3;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$3;-><init>(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;Ljavafx/scene/control/TextField;)V

    invoke-virtual {v5, v6}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 202
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TextField;->getCaretPosition()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->updateTextNodeCaretPos(I)V

    .line 203
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TextField;->selectionProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v5

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;)Ljavafx/beans/InvalidationListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 208
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHighlightPath:Ljavafx/scene/shape/Path;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/shape/Path;->setManaged(Z)V

    .line 209
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHighlightPath:Ljavafx/scene/shape/Path;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/shape/Path;->setStroke(Ljavafx/scene/paint/Paint;)V

    .line 210
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHighlightPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v5}, Ljavafx/scene/shape/Path;->layoutXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textTranslateX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v5, v6}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 211
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHighlightPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v5}, Ljavafx/scene/shape/Path;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TextField;->anchorProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/TextField;->caretPositionProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/beans/property/ReadOnlyIntegerProperty;->isNotEqualTo(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/TextField;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/beans/binding/BooleanBinding;->and(Ljavafx/beans/value/ObservableBooleanValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 212
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHighlightPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v5}, Ljavafx/scene/shape/Path;->fillProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->highlightFill:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v5, v6}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 213
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v5}, Ljavafx/scene/text/Text;->impl_selectionShapeProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v5

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;)Ljavafx/beans/InvalidationListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 218
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretPath:Ljavafx/scene/shape/Path;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/shape/Path;->setManaged(Z)V

    .line 219
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretPath:Ljavafx/scene/shape/Path;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/shape/Path;->setStrokeWidth(D)V

    .line 220
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v5}, Ljavafx/scene/shape/Path;->fillProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textFill:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v5, v6}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 221
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v5}, Ljavafx/scene/shape/Path;->strokeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textFill:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v5, v6}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 225
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v5}, Ljavafx/scene/shape/Path;->opacityProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v5

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$4;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$4;-><init>(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;)V

    invoke-virtual {v5, v6}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 231
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v5}, Ljavafx/scene/shape/Path;->layoutXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textTranslateX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v5, v6}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 232
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v5}, Ljavafx/scene/text/Text;->impl_caretShapeProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v5

    move-object v6, v1

    move-object v7, v2

    invoke-static {v6, v7}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;Ljavafx/scene/control/TextField;)Ljavafx/beans/InvalidationListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 246
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TextField;->fontProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v5

    move-object v6, v1

    move-object v7, v2

    invoke-static {v6, v7}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$$Lambda$6;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;Ljavafx/scene/control/TextField;)Ljavafx/beans/InvalidationListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 254
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TextField;->prefColumnCountProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v6

    const-string v7, "prefColumnCount"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 255
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TextField;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->setCaretAnimating(Z)V

    .line 257
    :cond_1
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TextField;->alignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v5

    move-object v6, v1

    move-object v7, v2

    invoke-static {v6, v7}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$$Lambda$7;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;Ljavafx/scene/control/TextField;)Ljavafx/beans/InvalidationListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 265
    move-object v5, v1

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$5;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$5;-><init>(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;Ljavafx/scene/control/TextField;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->usePromptText:Ljavafx/beans/value/ObservableBooleanValue;

    .line 278
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->promptTextFill:Ljavafx/beans/property/ObjectProperty;

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$$Lambda$8;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;)Ljavafx/beans/InvalidationListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 282
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TextField;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v5

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$$Lambda$9;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;)Ljavafx/beans/InvalidationListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/beans/property/StringProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 289
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->usePromptText:Ljavafx/beans/value/ObservableBooleanValue;

    invoke-interface {v5}, Ljavafx/beans/value/ObservableBooleanValue;->get()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 290
    move-object v5, v1

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->createPromptNode()V

    .line 293
    :cond_2
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->usePromptText:Ljavafx/beans/value/ObservableBooleanValue;

    move-object v6, v1

    move-object v7, v2

    invoke-static {v6, v7}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$$Lambda$10;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;Ljavafx/scene/control/TextField;)Ljavafx/beans/InvalidationListener;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavafx/beans/value/ObservableBooleanValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 298
    sget-boolean v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->SHOW_HANDLES:Z

    if-eqz v5, :cond_3

    .line 299
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    const-wide v6, 0x4066800000000000L    # 180.0

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/layout/StackPane;->setRotate(D)V

    .line 301
    move-object v5, v1

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$$Lambda$11;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;)Ljavafx/event/EventHandler;

    move-result-object v5

    move-object v4, v5

    .line 307
    .local v4, "handlePressHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/input/MouseEvent;>;"
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/StackPane;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    .line 308
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/StackPane;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    .line 309
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/StackPane;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    .line 311
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$$Lambda$12;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;)Ljavafx/event/EventHandler;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/StackPane;->setOnMouseDragged(Ljavafx/event/EventHandler;)V

    .line 319
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$6;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$6;-><init>(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;)V

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/StackPane;->setOnMouseDragged(Ljavafx/event/EventHandler;)V

    .line 341
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$7;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$7;-><init>(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;)V

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/StackPane;->setOnMouseDragged(Ljavafx/event/EventHandler;)V

    .line 363
    .end local v4    # "handlePressHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/input/MouseEvent;>;"
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;)Ljavafx/scene/layout/Pane;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textGroup:Ljavafx/scene/layout/Pane;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;)Ljavafx/scene/text/Text;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;)D
    .locals 3

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->pressX:D

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    return-wide v0
.end method

.method static synthetic access$300(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;)D
    .locals 3

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->pressY:D

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    return-wide v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;Ljavafx/scene/control/TextField;Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->lambda$new$194(Ljavafx/scene/control/TextField;Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;Ljavafx/scene/control/TextField;Ljavafx/beans/Observable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->lambda$new$195(Ljavafx/scene/control/TextField;Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$10(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->lambda$new$204(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$11(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->lambda$new$205(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->lambda$new$196(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->lambda$new$197(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;Ljavafx/scene/control/TextField;Ljavafx/beans/Observable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->lambda$new$198(Ljavafx/scene/control/TextField;Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;Ljavafx/scene/control/TextField;Ljavafx/beans/Observable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->lambda$new$199(Ljavafx/scene/control/TextField;Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;Ljavafx/scene/control/TextField;Ljavafx/beans/Observable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->lambda$new$200(Ljavafx/scene/control/TextField;Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$7(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->lambda$new$201(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$8(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->lambda$new$202(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$9(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;Ljavafx/scene/control/TextField;Ljavafx/beans/Observable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->lambda$new$203(Ljavafx/scene/control/TextField;Ljavafx/beans/Observable;)V

    return-void
.end method

.method private createPromptNode()V
    .locals 5

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->promptNode:Ljavafx/scene/text/Text;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->usePromptText:Ljavafx/beans/value/ObservableBooleanValue;

    invoke-interface {v1}, Ljavafx/beans/value/ObservableBooleanValue;->get()Z

    move-result v1

    if-nez v1, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    move-object v1, v0

    new-instance v2, Ljavafx/scene/text/Text;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/text/Text;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->promptNode:Ljavafx/scene/text/Text;

    .line 378
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textGroup:Ljavafx/scene/layout/Pane;

    invoke-virtual {v1}, Ljavafx/scene/layout/Pane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->promptNode:Ljavafx/scene/text/Text;

    invoke-interface {v1, v2, v3}, Ljavafx/collections/ObservableList;->add(ILjava/lang/Object;)V

    .line 379
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->promptNode:Ljavafx/scene/text/Text;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/text/Text;->setManaged(Z)V

    .line 380
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->promptNode:Ljavafx/scene/text/Text;

    invoke-virtual {v1}, Ljavafx/scene/text/Text;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "text"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 381
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->promptNode:Ljavafx/scene/text/Text;

    invoke-virtual {v1}, Ljavafx/scene/text/Text;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->usePromptText:Ljavafx/beans/value/ObservableBooleanValue;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 382
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->promptNode:Ljavafx/scene/text/Text;

    invoke-virtual {v1}, Ljavafx/scene/text/Text;->fontProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TextField;

    invoke-virtual {v2}, Ljavafx/scene/control/TextField;->fontProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 384
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->promptNode:Ljavafx/scene/text/Text;

    invoke-virtual {v1}, Ljavafx/scene/text/Text;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TextField;

    invoke-virtual {v2}, Ljavafx/scene/control/TextField;->promptTextProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/StringProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 385
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->promptNode:Ljavafx/scene/text/Text;

    invoke-virtual {v1}, Ljavafx/scene/text/Text;->fillProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->promptTextFill:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 386
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->updateSelection()V

    .line 387
    goto :goto_0
.end method

.method private synthetic lambda$new$194(Ljavafx/scene/control/TextField;Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 10

    .prologue
    .line 139
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v2, p1

    .local v2, "textField":Ljavafx/scene/control/TextField;
    move-object v3, p2

    .local v3, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v4, p3

    .local v4, "oldValue":Ljava/lang/Number;
    move-object v5, p4

    .local v5, "newValue":Ljava/lang/Number;
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TextField;->getWidth()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    .line 140
    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/TextField;->getCaretPosition()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->updateTextNodeCaretPos(I)V

    .line 141
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->isForwardBias()Z

    move-result v6

    if-nez v6, :cond_0

    .line 142
    move-object v6, v1

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->setForwardBias(Z)V

    .line 144
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->updateCaretOff()V

    .line 146
    :cond_1
    return-void
.end method

.method private synthetic lambda$new$195(Ljavafx/scene/control/TextField;Ljavafx/beans/Observable;)V
    .locals 8

    .prologue
    .line 149
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v2, p1

    .local v2, "textField":Ljavafx/scene/control/TextField;
    move-object v3, p2

    .local v3, "observable":Ljavafx/beans/Observable;
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TextField;->getWidth()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 150
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TextField;->getCaretPosition()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->updateTextNodeCaretPos(I)V

    .line 151
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->updateCaretOff()V

    .line 153
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$196(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->updateSelection()V

    .line 205
    return-void
.end method

.method private synthetic lambda$new$197(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->updateSelection()V

    .line 215
    return-void
.end method

.method private synthetic lambda$new$198(Ljavafx/scene/control/TextField;Ljavafx/beans/Observable;)V
    .locals 6

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v1, p1

    .local v1, "textField":Ljavafx/scene/control/TextField;
    move-object v2, p2

    .local v2, "observable":Ljavafx/beans/Observable;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v3}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v4}, Ljavafx/scene/text/Text;->impl_caretShapeProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 234
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v3}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 236
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TextField;->getCaretPosition()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->updateTextNodeCaretPos(I)V

    .line 242
    :goto_0
    return-void

    .line 237
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v3}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->size()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 240
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v4}, Ljavafx/scene/shape/Path;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretWidth:D

    goto :goto_0
.end method

.method private synthetic lambda$new$199(Ljavafx/scene/control/TextField;Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v1, p1

    .local v1, "textField":Ljavafx/scene/control/TextField;
    move-object v2, p2

    .local v2, "observable":Ljavafx/beans/Observable;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TextField;->requestLayout()V

    .line 251
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TextField;

    invoke-virtual {v3}, Ljavafx/scene/control/TextField;->requestLayout()V

    .line 252
    return-void
.end method

.method private synthetic lambda$new$200(Ljavafx/scene/control/TextField;Ljavafx/beans/Observable;)V
    .locals 8

    .prologue
    .line 258
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v2, p1

    .local v2, "textField":Ljavafx/scene/control/TextField;
    move-object v3, p2

    .local v3, "observable":Ljavafx/beans/Observable;
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TextField;->getWidth()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 259
    move-object v4, v1

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->updateTextPos()V

    .line 260
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->updateCaretOff()V

    .line 261
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TextField;->requestLayout()V

    .line 263
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$201(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->updateTextPos()V

    .line 280
    return-void
.end method

.method private synthetic lambda$new$202(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->isEditing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 285
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->updateTextPos()V

    .line 287
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$203(Ljavafx/scene/control/TextField;Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v1, p1

    .local v1, "textField":Ljavafx/scene/control/TextField;
    move-object v2, p2

    .local v2, "observable":Ljavafx/beans/Observable;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->createPromptNode()V

    .line 295
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TextField;->requestLayout()V

    .line 296
    return-void
.end method

.method private synthetic lambda$new$204(Ljavafx/scene/input/MouseEvent;)V
    .locals 6

    .prologue
    .line 302
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v2, p1

    .local v2, "e":Ljavafx/scene/input/MouseEvent;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->pressX:D

    .line 303
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->pressY:D

    .line 304
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 305
    return-void
.end method

.method private synthetic lambda$new$205(Ljavafx/scene/input/MouseEvent;)V
    .locals 13

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    new-instance v4, Ljavafx/geometry/Point2D;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v6}, Ljavafx/scene/layout/StackPane;->getLayoutX()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v8

    add-double/2addr v6, v8

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->pressX:D

    add-double/2addr v6, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v8}, Ljavafx/scene/text/Text;->getLayoutX()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    .line 313
    invoke-virtual {v8}, Ljavafx/scene/layout/StackPane;->getLayoutY()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v10

    add-double/2addr v8, v10

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->pressY:D

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x4018000000000000L    # 6.0

    sub-double/2addr v8, v10

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v2, v4

    .line 314
    .local v2, "p":Ljavafx/geometry/Point2D;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->translateCaretPosition(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/text/Text;->impl_hitTestChar(Ljavafx/geometry/Point2D;)Lcom/sun/javafx/scene/text/HitInfo;

    move-result-object v4

    move-object v3, v4

    .line 315
    .local v3, "hit":Lcom/sun/javafx/scene/text/HitInfo;
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->positionCaret(Lcom/sun/javafx/scene/text/HitInfo;Z)V

    .line 316
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 317
    return-void
.end method

.method private updateSelection()V
    .locals 14

    .prologue
    .line 390
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/TextField;

    move-object v1, v7

    .line 391
    .local v1, "textField":Ljavafx/scene/control/TextField;
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TextField;->getSelection()Ljavafx/scene/control/IndexRange;

    move-result-object v7

    move-object v2, v7

    .line 393
    .local v2, "newValue":Ljavafx/scene/control/IndexRange;
    move-object v7, v2

    if-eqz v7, :cond_0

    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/IndexRange;->getLength()I

    move-result v7

    if-nez v7, :cond_2

    .line 394
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v7}, Ljavafx/scene/text/Text;->impl_selectionStartProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 395
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v7}, Ljavafx/scene/text/Text;->impl_selectionEndProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 403
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v7}, Ljavafx/scene/text/Text;->impl_selectionShapeProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/beans/property/ReadOnlyObjectProperty;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljavafx/scene/shape/PathElement;

    move-object v3, v7

    .line 404
    .local v3, "elements":[Ljavafx/scene/shape/PathElement;
    move-object v7, v3

    if-nez v7, :cond_3

    .line 405
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHighlightPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v7}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->clear()V

    .line 410
    :goto_1
    sget-boolean v7, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->SHOW_HANDLES:Z

    if-eqz v7, :cond_1

    move-object v7, v2

    if-eqz v7, :cond_1

    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/IndexRange;->getLength()I

    move-result v7

    if-lez v7, :cond_1

    .line 411
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TextField;->getCaretPosition()I

    move-result v7

    move v4, v7

    .line 412
    .local v4, "caretPos":I
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TextField;->getAnchor()I

    move-result v7

    move v5, v7

    .line 417
    .local v5, "anchorPos":I
    move-object v7, v0

    move v8, v5

    invoke-direct {v7, v8}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->updateTextNodeCaretPos(I)V

    .line 418
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v7}, Ljavafx/scene/shape/Path;->getBoundsInParent()Ljavafx/geometry/Bounds;

    move-result-object v7

    move-object v6, v7

    .line 419
    .local v6, "b":Ljavafx/geometry/Bounds;
    move v7, v4

    move v8, v5

    if-ge v7, v8, :cond_4

    .line 420
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    move-object v8, v6

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v8

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v10}, Ljavafx/scene/layout/StackPane;->getWidth()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    sub-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/StackPane;->setLayoutX(D)V

    .line 428
    :goto_2
    move-object v7, v0

    move v8, v4

    invoke-direct {v7, v8}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->updateTextNodeCaretPos(I)V

    .line 429
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v7}, Ljavafx/scene/shape/Path;->getBoundsInParent()Ljavafx/geometry/Bounds;

    move-result-object v7

    move-object v6, v7

    .line 430
    move v7, v4

    move v8, v5

    if-ge v7, v8, :cond_5

    .line 431
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    move-object v8, v6

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v8

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v10}, Ljavafx/scene/layout/StackPane;->getWidth()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    sub-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/StackPane;->setLayoutX(D)V

    .line 437
    .end local v4    # "caretPos":I
    .end local v5    # "anchorPos":I
    .end local v6    # "b":Ljavafx/geometry/Bounds;
    :cond_1
    :goto_3
    return-void

    .line 397
    .end local v3    # "elements":[Ljavafx/scene/shape/PathElement;
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v7}, Ljavafx/scene/text/Text;->impl_selectionStartProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/control/IndexRange;->getStart()I

    move-result v8

    invoke-virtual {v7, v8}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 399
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v7}, Ljavafx/scene/text/Text;->impl_selectionEndProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/control/IndexRange;->getStart()I

    move-result v8

    invoke-virtual {v7, v8}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 400
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v7}, Ljavafx/scene/text/Text;->impl_selectionEndProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/control/IndexRange;->getEnd()I

    move-result v8

    invoke-virtual {v7, v8}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    goto/16 :goto_0

    .line 407
    .restart local v3    # "elements":[Ljavafx/scene/shape/PathElement;
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHighlightPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v7}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v3

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v7

    goto/16 :goto_1

    .line 422
    .restart local v4    # "caretPos":I
    .restart local v5    # "anchorPos":I
    .restart local v6    # "b":Ljavafx/geometry/Bounds;
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    move-object v8, v6

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v8

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v10}, Ljavafx/scene/layout/StackPane;->getWidth()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    sub-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/StackPane;->setLayoutX(D)V

    goto :goto_2

    .line 433
    :cond_5
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    move-object v8, v6

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v8

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v10}, Ljavafx/scene/layout/StackPane;->getWidth()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    sub-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/StackPane;->setLayoutX(D)V

    goto :goto_3
.end method

.method private updateTextNodeCaretPos(I)V
    .locals 5

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move v1, p1

    .local v1, "pos":I
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->isForwardBias()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 367
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/text/Text;->setImpl_caretPosition(I)V

    .line 371
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v2}, Ljavafx/scene/text/Text;->impl_caretBiasProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->isForwardBias()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 372
    return-void

    .line 369
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/text/Text;->setImpl_caretPosition(I)V

    goto :goto_0
.end method

.method private updateTextPos()V
    .locals 17

    .prologue
    .line 481
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textTranslateX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v10}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v10

    move-wide v2, v10

    .line 483
    .local v2, "oldX":D
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v10}, Ljavafx/scene/text/Text;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v10

    move-wide v6, v10

    .line 485
    .local v6, "textNodeWidth":D
    sget-object v10, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$8;->$SwitchMap$javafx$geometry$HPos:[I

    move-object v11, v1

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getHAlignment()Ljavafx/geometry/HPos;

    move-result-object v11

    invoke-virtual {v11}, Ljavafx/geometry/HPos;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 517
    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretWidth:D

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    move-wide v4, v10

    .line 519
    .local v4, "newX":D
    move-wide v10, v4

    move-wide v12, v2

    cmpg-double v10, v10, v12

    if-ltz v10, :cond_0

    move-wide v10, v4

    move-wide v12, v6

    add-double/2addr v10, v12

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textRight:Ljavafx/beans/value/ObservableDoubleValue;

    invoke-interface {v12}, Ljavafx/beans/value/ObservableDoubleValue;->get()D

    move-result-wide v12

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_1

    .line 520
    :cond_0
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textTranslateX:Ljavafx/beans/property/DoubleProperty;

    move-wide v11, v4

    invoke-virtual {v10, v11, v12}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 522
    :cond_1
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->usePromptText:Ljavafx/beans/value/ObservableBooleanValue;

    invoke-interface {v10}, Ljavafx/beans/value/ObservableBooleanValue;->get()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 523
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->promptNode:Ljavafx/scene/text/Text;

    invoke-virtual {v10}, Ljavafx/scene/text/Text;->layoutXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v10

    move-wide v11, v4

    invoke-virtual {v10, v11, v12}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 526
    :cond_2
    :goto_0
    return-void

    .line 487
    .end local v4    # "newX":D
    :pswitch_0
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textRight:Ljavafx/beans/value/ObservableDoubleValue;

    invoke-interface {v10}, Ljavafx/beans/value/ObservableDoubleValue;->get()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    move-wide v8, v10

    .line 488
    .local v8, "midPoint":D
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->usePromptText:Ljavafx/beans/value/ObservableBooleanValue;

    invoke-interface {v10}, Ljavafx/beans/value/ObservableBooleanValue;->get()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 492
    move-wide v10, v8

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->promptNode:Ljavafx/scene/text/Text;

    invoke-virtual {v12}, Ljavafx/scene/text/Text;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v12

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    sub-double/2addr v10, v12

    move-wide v4, v10

    .line 493
    .restart local v4    # "newX":D
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->promptNode:Ljavafx/scene/text/Text;

    move-wide v11, v4

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/text/Text;->setLayoutX(D)V

    .line 498
    :goto_1
    move-wide v10, v4

    move-wide v12, v6

    add-double/2addr v10, v12

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textRight:Ljavafx/beans/value/ObservableDoubleValue;

    invoke-interface {v12}, Ljavafx/beans/value/ObservableDoubleValue;->get()D

    move-result-wide v12

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_2

    .line 499
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textTranslateX:Ljavafx/beans/property/DoubleProperty;

    move-wide v11, v4

    invoke-virtual {v10, v11, v12}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    goto :goto_0

    .line 495
    .end local v4    # "newX":D
    :cond_3
    move-wide v10, v8

    move-wide v12, v6

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    sub-double/2addr v10, v12

    move-wide v4, v10

    .restart local v4    # "newX":D
    goto :goto_1

    .line 504
    .end local v4    # "newX":D
    .end local v8    # "midPoint":D
    :pswitch_1
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textRight:Ljavafx/beans/value/ObservableDoubleValue;

    invoke-interface {v10}, Ljavafx/beans/value/ObservableDoubleValue;->get()D

    move-result-wide v10

    move-wide v12, v6

    sub-double/2addr v10, v12

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretWidth:D

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    sub-double/2addr v10, v12

    move-wide v4, v10

    .line 506
    .restart local v4    # "newX":D
    move-wide v10, v4

    move-wide v12, v2

    cmpl-double v10, v10, v12

    if-gtz v10, :cond_4

    move-wide v10, v4

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_5

    .line 507
    :cond_4
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textTranslateX:Ljavafx/beans/property/DoubleProperty;

    move-wide v11, v4

    invoke-virtual {v10, v11, v12}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 509
    :cond_5
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->usePromptText:Ljavafx/beans/value/ObservableBooleanValue;

    invoke-interface {v10}, Ljavafx/beans/value/ObservableBooleanValue;->get()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 510
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->promptNode:Ljavafx/scene/text/Text;

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textRight:Ljavafx/beans/value/ObservableDoubleValue;

    invoke-interface {v11}, Ljavafx/beans/value/ObservableDoubleValue;->get()D

    move-result-wide v11

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->promptNode:Ljavafx/scene/text/Text;

    invoke-virtual {v13}, Ljavafx/scene/text/Text;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v13

    invoke-virtual {v13}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v13

    sub-double/2addr v11, v13

    move-object v13, v1

    iget-wide v13, v13, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretWidth:D

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double/2addr v13, v15

    sub-double/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/text/Text;->setLayoutX(D)V

    goto/16 :goto_0

    .line 485
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected addHighlight(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/Node;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 704
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v1, p1

    .local v1, "nodes":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/Node;>;"
    move v2, p2

    .local v2, "start":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textGroup:Ljavafx/scene/layout/Pane;

    invoke-virtual {v3}, Ljavafx/scene/layout/Pane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 705
    return-void
.end method

.method public computeBaselineOffset(DDDD)D
    .locals 15

    .prologue
    .line 471
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-wide/from16 v2, p1

    .local v2, "topInset":D
    move-wide/from16 v4, p3

    .local v4, "rightInset":D
    move-wide/from16 v6, p5

    .local v6, "bottomInset":D
    move-wide/from16 v8, p7

    .local v8, "leftInset":D
    move-wide v10, v2

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v12}, Ljavafx/scene/text/Text;->getBaselineOffset()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-wide v1, v10

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    return-wide v1
.end method

.method protected computeMaxHeight(DDDDD)D
    .locals 15

    .prologue
    .line 467
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/TextField;

    move-wide v13, v2

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/control/TextField;->prefHeight(D)D

    move-result-wide v12

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    return-wide v1
.end method

.method protected computeMinHeight(DDDDD)D
    .locals 23

    .prologue
    .line 459
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-wide/from16 v1, p1

    .local v1, "width":D
    move-wide/from16 v3, p3

    .local v3, "topInset":D
    move-wide/from16 v5, p5

    .local v5, "rightInset":D
    move-wide/from16 v7, p7

    .local v7, "bottomInset":D
    move-wide/from16 v9, p9

    .local v9, "leftInset":D
    move-object v11, v0

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    move-wide/from16 v20, v9

    invoke-virtual/range {v11 .. v21}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->computePrefHeight(DDDDD)D

    move-result-wide v11

    move-wide v0, v11

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    return-wide v0
.end method

.method protected computePrefHeight(DDDDD)D
    .locals 17

    .prologue
    .line 463
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-wide v12, v4

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v14}, Ljavafx/scene/text/Text;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v14

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v14, v8

    add-double/2addr v12, v14

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    return-wide v1
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 23

    .prologue
    .line 449
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-wide/from16 v4, p1

    .local v4, "height":D
    move-wide/from16 v6, p3

    .local v6, "topInset":D
    move-wide/from16 v8, p5

    .local v8, "rightInset":D
    move-wide/from16 v10, p7

    .local v10, "bottomInset":D
    move-wide/from16 v12, p9

    .local v12, "leftInset":D
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v18

    check-cast v18, Ljavafx/scene/control/TextField;

    move-object/from16 v14, v18

    .line 451
    .local v14, "textField":Ljavafx/scene/control/TextField;
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->fontMetrics:Ljavafx/beans/value/ObservableObjectValue;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljavafx/beans/value/ObservableObjectValue;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sun/javafx/tk/FontMetrics;

    const-string v19, "W"

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/tk/FontMetrics;->computeStringWidth(Ljava/lang/String;)F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v15, v18

    .line 453
    .local v15, "characterWidth":D
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/TextField;->getPrefColumnCount()I

    move-result v18

    move/from16 v17, v18

    .line 455
    .local v17, "columnCount":I
    move/from16 v18, v17

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v15

    mul-double v18, v18, v20

    move-wide/from16 v20, v12

    add-double v18, v18, v20

    move-wide/from16 v20, v8

    add-double v18, v18, v20

    move-wide/from16 v3, v18

    .end local v3    # "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    return-wide v3
.end method

.method public deleteChar(Z)V
    .locals 12

    .prologue
    .line 586
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move v1, p1

    .local v1, "previous":Z
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v7}, Ljavafx/scene/text/Text;->getBoundsInParent()Ljavafx/geometry/Bounds;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v7

    move-wide v2, v7

    .line 587
    .local v2, "textMaxXOld":D
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v7}, Ljavafx/scene/shape/Path;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v7

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textTranslateX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v9}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v9

    add-double/2addr v7, v9

    move-wide v4, v7

    .line 588
    .local v4, "caretMaxXOld":D
    move v7, v1

    if-eqz v7, :cond_1

    move-object v7, v0

    .line 589
    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/TextField;

    invoke-virtual {v7}, Ljavafx/scene/control/TextField;->deletePreviousChar()Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x1

    .line 590
    :goto_0
    move v6, v7

    .line 592
    .local v6, "shouldBeep":Z
    move v7, v6

    if-eqz v7, :cond_3

    .line 597
    :goto_1
    return-void

    .line 589
    .end local v6    # "shouldBeep":Z
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    move-object v7, v0

    .line 590
    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/TextField;

    invoke-virtual {v7}, Ljavafx/scene/control/TextField;->deleteNextChar()Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 595
    .restart local v6    # "shouldBeep":Z
    :cond_3
    move-object v7, v0

    move-wide v8, v2

    move-wide v10, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->scrollAfterDelete(DD)V

    goto :goto_1
.end method

.method public getCharacterBounds(I)Ljavafx/geometry/Rectangle2D;
    .locals 23

    .prologue
    .line 668
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move/from16 v2, p1

    .local v2, "index":I
    move v12, v2

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v13}, Ljavafx/scene/text/Text;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-ne v12, v13, :cond_0

    .line 669
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v12}, Ljavafx/scene/text/Text;->getBoundsInLocal()Ljavafx/geometry/Bounds;

    move-result-object v12

    move-object v11, v12

    .line 670
    .local v11, "textNodeBounds":Ljavafx/geometry/Bounds;
    move-object v12, v11

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-wide v3, v12

    .line 671
    .local v3, "x":D
    const-wide/16 v12, 0x0

    move-wide v5, v12

    .line 672
    .local v5, "y":D
    const-wide/16 v12, 0x0

    move-wide v7, v12

    .line 673
    .local v7, "width":D
    move-object v12, v11

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v12

    move-wide v9, v12

    .line 689
    .end local v11    # "textNodeBounds":Ljavafx/geometry/Bounds;
    .local v9, "height":D
    :goto_0
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textGroup:Ljavafx/scene/layout/Pane;

    invoke-virtual {v12}, Ljavafx/scene/layout/Pane;->getBoundsInParent()Ljavafx/geometry/Bounds;

    move-result-object v12

    move-object v11, v12

    .line 691
    .local v11, "textBounds":Ljavafx/geometry/Bounds;
    new-instance v12, Ljavafx/geometry/Rectangle2D;

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    move-wide v14, v3

    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v16

    add-double v14, v14, v16

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textTranslateX:Ljavafx/beans/property/DoubleProperty;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v16

    add-double v14, v14, v16

    move-wide/from16 v16, v5

    move-object/from16 v18, v11

    .line 692
    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v18

    add-double v16, v16, v18

    move-wide/from16 v18, v7

    move-wide/from16 v20, v9

    invoke-direct/range {v13 .. v21}, Ljavafx/geometry/Rectangle2D;-><init>(DDDD)V

    move-object v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    return-object v1

    .line 675
    .end local v3    # "x":D
    .end local v5    # "y":D
    .end local v7    # "width":D
    .end local v9    # "height":D
    .end local v11    # "textBounds":Ljavafx/geometry/Bounds;
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    :cond_0
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->characterBoundingPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v12}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v12

    invoke-interface {v12}, Ljavafx/collections/ObservableList;->clear()V

    .line 676
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->characterBoundingPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v12}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v12

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    move v14, v2

    move v15, v2

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/text/Text;->impl_getRangeShape(II)[Ljavafx/scene/shape/PathElement;

    move-result-object v13

    invoke-interface {v12, v13}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v12

    .line 677
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->characterBoundingPath:Ljavafx/scene/shape/Path;

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v13}, Ljavafx/scene/text/Text;->getLayoutX()D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/shape/Path;->setLayoutX(D)V

    .line 678
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->characterBoundingPath:Ljavafx/scene/shape/Path;

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v13}, Ljavafx/scene/text/Text;->getLayoutY()D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/shape/Path;->setLayoutY(D)V

    .line 680
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->characterBoundingPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v12}, Ljavafx/scene/shape/Path;->getBoundsInLocal()Ljavafx/geometry/Bounds;

    move-result-object v12

    move-object v11, v12

    .line 682
    .local v11, "bounds":Ljavafx/geometry/Bounds;
    move-object v12, v11

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-wide v3, v12

    .line 683
    .restart local v3    # "x":D
    move-object v12, v11

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v12

    move-wide v5, v12

    .line 685
    .restart local v5    # "y":D
    move-object v12, v11

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    const-wide/16 v12, 0x0

    :goto_1
    move-wide v7, v12

    .line 686
    .restart local v7    # "width":D
    move-object v12, v11

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    const-wide/16 v12, 0x0

    :goto_2
    move-wide v9, v12

    .restart local v9    # "height":D
    goto/16 :goto_0

    .line 685
    .end local v7    # "width":D
    .end local v9    # "height":D
    :cond_1
    move-object v12, v11

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v12

    goto :goto_1

    .line 686
    .restart local v7    # "width":D
    :cond_2
    move-object v12, v11

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v12

    goto :goto_2
.end method

.method protected getHAlignment()Ljavafx/geometry/HPos;
    .locals 3

    .prologue
    .line 792
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TextField;

    invoke-virtual {v2}, Ljavafx/scene/control/TextField;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v2

    move-object v1, v2

    .line 793
    .local v1, "hPos":Ljavafx/geometry/HPos;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    return-object v0
.end method

.method public getIndex(DD)Lcom/sun/javafx/scene/text/HitInfo;
    .locals 15

    .prologue
    .line 647
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-wide/from16 v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-wide v8, v1

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textTranslateX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v10}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v10

    sub-double/2addr v8, v10

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->snappedLeftInset()D

    move-result-wide v10

    sub-double/2addr v8, v10

    move-wide v10, v3

    move-object v12, v0

    .line 648
    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->snappedTopInset()D

    move-result-wide v12

    sub-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v5, v6

    .line 649
    .local v5, "p":Ljavafx/geometry/Point2D;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->translateCaretPosition(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/scene/text/Text;->impl_hitTestChar(Ljavafx/geometry/Point2D;)Lcom/sun/javafx/scene/text/HitInfo;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    return-object v0
.end method

.method public getMenuPosition()Ljavafx/geometry/Point2D;
    .locals 13

    .prologue
    .line 797
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v2, v0

    invoke-super {v2}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->getMenuPosition()Ljavafx/geometry/Point2D;

    move-result-object v2

    move-object v1, v2

    .line 798
    .local v1, "p":Ljavafx/geometry/Point2D;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 799
    new-instance v2, Ljavafx/geometry/Point2D;

    move-object v12, v2

    move-object v2, v12

    move-object v3, v12

    const-wide/16 v4, 0x0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v6

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v8}, Ljavafx/scene/text/Text;->getLayoutX()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->snappedLeftInset()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textTranslateX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v8}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-object v8, v1

    .line 800
    invoke-virtual {v8}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v8

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v10}, Ljavafx/scene/text/Text;->getLayoutY()D

    move-result-wide v10

    sub-double/2addr v8, v10

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->snappedTopInset()D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v2

    .line 802
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    return-object v0
.end method

.method protected getRangeShape(II)[Ljavafx/scene/shape/PathElement;
    .locals 6

    .prologue
    .line 700
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/text/Text;->impl_getRangeShape(II)[Ljavafx/scene/shape/PathElement;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    return-object v0
.end method

.method protected getUnderlineShape(II)[Ljavafx/scene/shape/PathElement;
    .locals 6

    .prologue
    .line 696
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/text/Text;->impl_getUnderlineShape(II)[Ljavafx/scene/shape/PathElement;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    return-object v0
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v1, p1

    .local v1, "propertyReference":Ljava/lang/String;
    const-string v2, "prefColumnCount"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 441
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TextField;

    invoke-virtual {v2}, Ljavafx/scene/control/TextField;->requestLayout()V

    .line 445
    :goto_0
    return-void

    .line 443
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->handleControlPropertyChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected layoutChildren(DDDD)V
    .locals 27

    .prologue
    .line 738
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "w":D
    move-wide/from16 v8, p7

    .local v8, "h":D
    move-object/from16 v17, v1

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    invoke-super/range {v17 .. v25}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->layoutChildren(DDDD)V

    .line 740
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 742
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/text/Text;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v17

    move-object/from16 v12, v17

    .line 743
    .local v12, "textNodeBounds":Ljavafx/geometry/Bounds;
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/text/Text;->getBaselineOffset()D

    move-result-wide v17

    move-wide/from16 v13, v17

    .line 744
    .local v13, "ascent":D
    move-object/from16 v17, v12

    invoke-virtual/range {v17 .. v17}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v17

    move-wide/from16 v19, v13

    sub-double v17, v17, v19

    move-wide/from16 v15, v17

    .line 746
    .local v15, "descent":D
    sget-object v17, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$8;->$SwitchMap$javafx$geometry$VPos:[I

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v18

    check-cast v18, Ljavafx/scene/control/TextField;

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/TextField;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/VPos;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    .line 757
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textGroup:Ljavafx/scene/layout/Pane;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/layout/Pane;->getHeight()D

    move-result-wide v17

    move-wide/from16 v19, v15

    sub-double v17, v17, v19

    move-wide/from16 v10, v17

    .line 759
    .local v10, "textY":D
    :goto_0
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    move-object/from16 v17, v0

    move-wide/from16 v18, v10

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/text/Text;->setY(D)V

    .line 760
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->promptNode:Ljavafx/scene/text/Text;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 761
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->promptNode:Ljavafx/scene/text/Text;

    move-object/from16 v17, v0

    move-wide/from16 v18, v10

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/text/Text;->setY(D)V

    .line 764
    :cond_0
    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v17

    check-cast v17, Ljavafx/scene/control/TextField;

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/control/TextField;->getWidth()D

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmpl-double v17, v17, v19

    if-lez v17, :cond_1

    .line 765
    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v17}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->updateTextPos()V

    .line 766
    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->updateCaretOff()V

    .line 770
    .end local v10    # "textY":D
    .end local v12    # "textNodeBounds":Ljavafx/geometry/Bounds;
    .end local v13    # "ascent":D
    .end local v15    # "descent":D
    :cond_1
    sget-boolean v17, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->SHOW_HANDLES:Z

    if-eqz v17, :cond_2

    .line 771
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->handleGroup:Ljavafx/scene/Group;

    move-object/from16 v17, v0

    move-wide/from16 v18, v2

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textTranslateX:Ljavafx/beans/property/DoubleProperty;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v20

    add-double v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/Group;->setLayoutX(D)V

    .line 772
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->handleGroup:Ljavafx/scene/Group;

    move-object/from16 v17, v0

    move-wide/from16 v18, v4

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/Group;->setLayoutY(D)V

    .line 776
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    move-object/from16 v18, v0

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v18

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    move-object/from16 v20, v0

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    .line 777
    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v20

    .line 776
    invoke-virtual/range {v17 .. v21}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 778
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    move-object/from16 v18, v0

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v18

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    move-object/from16 v20, v0

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    .line 779
    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v20

    .line 778
    invoke-virtual/range {v17 .. v21}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 780
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    move-object/from16 v18, v0

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v18

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    move-object/from16 v20, v0

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    .line 781
    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v20

    .line 780
    invoke-virtual/range {v17 .. v21}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 783
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretPath:Ljavafx/scene/shape/Path;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/shape/Path;->getBoundsInParent()Ljavafx/geometry/Bounds;

    move-result-object v17

    move-object/from16 v10, v17

    .line 784
    .local v10, "b":Ljavafx/geometry/Bounds;
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    move-object/from16 v17, v0

    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v18

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/layout/StackPane;->setLayoutY(D)V

    .line 786
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    move-object/from16 v17, v0

    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v18

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/layout/StackPane;->getHeight()D

    move-result-wide v20

    sub-double v18, v18, v20

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    add-double v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/layout/StackPane;->setLayoutY(D)V

    .line 787
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    move-object/from16 v17, v0

    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v18

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/layout/StackPane;->setLayoutY(D)V

    .line 789
    .end local v10    # "b":Ljavafx/geometry/Bounds;
    :cond_2
    return-void

    .line 748
    .restart local v12    # "textNodeBounds":Ljavafx/geometry/Bounds;
    .restart local v13    # "ascent":D
    .restart local v15    # "descent":D
    :pswitch_0
    move-wide/from16 v17, v13

    move-wide/from16 v10, v17

    .line 749
    .local v10, "textY":D
    goto/16 :goto_0

    .line 752
    .end local v10    # "textY":D
    :pswitch_1
    move-wide/from16 v17, v13

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textGroup:Ljavafx/scene/layout/Pane;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/layout/Pane;->getHeight()D

    move-result-wide v19

    add-double v17, v17, v19

    move-wide/from16 v19, v15

    sub-double v17, v17, v19

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v17, v17, v19

    move-wide/from16 v10, v17

    .line 753
    .restart local v10    # "textY":D
    goto/16 :goto_0

    .line 746
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected maskText(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 806
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v1, p1

    .local v1, "txt":Ljava/lang/String;
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    instance-of v5, v5, Ljavafx/scene/control/PasswordField;

    if-eqz v5, :cond_1

    .line 807
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v5

    .line 808
    .local v2, "n":I
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move v7, v2

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v5

    .line 809
    .local v3, "passwordBuilder":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 810
    move-object v5, v3

    const/16 v6, 0x25cf

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 809
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 813
    :cond_0
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 815
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    .end local v2    # "n":I
    .end local v3    # "passwordBuilder":Ljava/lang/StringBuilder;
    .end local v4    # "i":I
    :goto_1
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    :cond_1
    move-object v5, v1

    move-object v0, v5

    goto :goto_1
.end method

.method public nextCharacterVisually(Z)V
    .locals 19

    .prologue
    .line 712
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move/from16 v2, p1

    .local v2, "moveRight":Z
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->isRTL()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 714
    move v10, v2

    if-nez v10, :cond_5

    const/4 v10, 0x1

    :goto_0
    move v2, v10

    .line 717
    :cond_0
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v10}, Ljavafx/scene/shape/Path;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v10

    move-object v3, v10

    .line 718
    .local v3, "caretBounds":Ljavafx/geometry/Bounds;
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v10}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v10

    invoke-interface {v10}, Ljavafx/collections/ObservableList;->size()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_1

    .line 723
    new-instance v10, Ljavafx/scene/shape/Path;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    const/4 v12, 0x2

    new-array v12, v12, [Ljavafx/scene/shape/PathElement;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x0

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v15}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljavafx/scene/shape/PathElement;

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v15}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v15

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljavafx/scene/shape/PathElement;

    aput-object v15, v13, v14

    invoke-direct {v11, v12}, Ljavafx/scene/shape/Path;-><init>([Ljavafx/scene/shape/PathElement;)V

    invoke-virtual {v10}, Ljavafx/scene/shape/Path;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v10

    move-object v3, v10

    .line 725
    :cond_1
    move v10, v2

    if-eqz v10, :cond_6

    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v10

    :goto_1
    move-wide v4, v10

    .line 726
    .local v4, "hitX":D
    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v10

    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v12

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    move-wide v6, v10

    .line 727
    .local v6, "hitY":D
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    move-object v11, v1

    new-instance v12, Ljavafx/geometry/Point2D;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-wide v14, v4

    move-wide/from16 v16, v6

    invoke-direct/range {v13 .. v17}, Ljavafx/geometry/Point2D;-><init>(DD)V

    invoke-virtual {v11, v12}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->translateCaretPosition(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljavafx/scene/text/Text;->impl_hitTestChar(Ljavafx/geometry/Point2D;)Lcom/sun/javafx/scene/text/HitInfo;

    move-result-object v10

    move-object v8, v10

    .line 728
    .local v8, "hit":Lcom/sun/javafx/scene/text/HitInfo;
    new-instance v10, Ljavafx/scene/shape/Path;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    move-object v13, v8

    invoke-virtual {v13}, Lcom/sun/javafx/scene/text/HitInfo;->getCharIndex()I

    move-result v13

    move-object v14, v8

    invoke-virtual {v14}, Lcom/sun/javafx/scene/text/HitInfo;->getCharIndex()I

    move-result v14

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/text/Text;->impl_getRangeShape(II)[Ljavafx/scene/shape/PathElement;

    move-result-object v12

    invoke-direct {v11, v12}, Ljavafx/scene/shape/Path;-><init>([Ljavafx/scene/shape/PathElement;)V

    move-object v9, v10

    .line 729
    .local v9, "charShape":Ljavafx/scene/shape/Path;
    move v10, v2

    if-eqz v10, :cond_2

    move-object v10, v9

    invoke-virtual {v10}, Ljavafx/scene/shape/Path;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v10

    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    cmpl-double v10, v10, v12

    if-gtz v10, :cond_3

    :cond_2
    move v10, v2

    if-nez v10, :cond_4

    move-object v10, v9

    .line 730
    invoke-virtual {v10}, Ljavafx/scene/shape/Path;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v10

    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    cmpg-double v10, v10, v12

    if-gez v10, :cond_4

    .line 731
    :cond_3
    move-object v10, v8

    move-object v11, v8

    invoke-virtual {v11}, Lcom/sun/javafx/scene/text/HitInfo;->isLeading()Z

    move-result v11

    if-nez v11, :cond_7

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v10, v11}, Lcom/sun/javafx/scene/text/HitInfo;->setLeading(Z)V

    .line 733
    :cond_4
    move-object v10, v1

    move-object v11, v8

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->positionCaret(Lcom/sun/javafx/scene/text/HitInfo;Z)V

    .line 734
    return-void

    .line 714
    .end local v3    # "caretBounds":Ljavafx/geometry/Bounds;
    .end local v4    # "hitX":D
    .end local v6    # "hitY":D
    .end local v8    # "hit":Lcom/sun/javafx/scene/text/HitInfo;
    .end local v9    # "charShape":Ljavafx/scene/shape/Path;
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 725
    .restart local v3    # "caretBounds":Ljavafx/geometry/Bounds;
    :cond_6
    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v10

    goto/16 :goto_1

    .line 731
    .restart local v4    # "hitX":D
    .restart local v6    # "hitY":D
    .restart local v8    # "hit":Lcom/sun/javafx/scene/text/HitInfo;
    .restart local v9    # "charShape":Ljavafx/scene/shape/Path;
    :cond_7
    const/4 v11, 0x0

    goto :goto_2
.end method

.method public positionCaret(Lcom/sun/javafx/scene/text/HitInfo;Z)V
    .locals 7

    .prologue
    .line 653
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v1, p1

    .local v1, "hit":Lcom/sun/javafx/scene/text/HitInfo;
    move v2, p2

    .local v2, "select":Z
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TextField;

    move-object v3, v5

    .line 654
    .local v3, "textField":Ljavafx/scene/control/TextField;
    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/TextField;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/beans/property/StringProperty;->getValueSafe()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/control/skin/Utils;->getHitInsertionIndex(Lcom/sun/javafx/scene/text/HitInfo;Ljava/lang/String;)I

    move-result v5

    move v4, v5

    .line 656
    .local v4, "pos":I
    move v5, v2

    if-eqz v5, :cond_0

    .line 657
    move-object v5, v3

    move v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TextField;->selectPositionCaret(I)V

    .line 662
    :goto_0
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/text/HitInfo;->isLeading()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->setForwardBias(Z)V

    .line 663
    return-void

    .line 659
    :cond_0
    move-object v5, v3

    move v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TextField;->positionCaret(I)V

    goto :goto_0
.end method

.method protected varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 821
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$8;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 825
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    :goto_0
    return-object v0

    .line 824
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    :pswitch_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/text/Text;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 821
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected removeHighlight(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 708
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v1, p1

    .local v1, "nodes":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/Node;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textGroup:Ljavafx/scene/layout/Pane;

    invoke-virtual {v2}, Ljavafx/scene/layout/Pane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    .line 709
    return-void
.end method

.method public replaceText(IILjava/lang/String;)V
    .locals 13

    .prologue
    .line 574
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move-object/from16 v3, p3

    .local v3, "txt":Ljava/lang/String;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v8}, Ljavafx/scene/text/Text;->getBoundsInParent()Ljavafx/geometry/Bounds;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v8

    move-wide v4, v8

    .line 575
    .local v4, "textMaxXOld":D
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v8}, Ljavafx/scene/shape/Path;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v8

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textTranslateX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v10}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v10

    add-double/2addr v8, v10

    move-wide v6, v8

    .line 576
    .local v6, "caretMaxXOld":D
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/TextField;

    move v9, v1

    move v10, v2

    move-object v11, v3

    invoke-virtual {v8, v9, v10, v11}, Ljavafx/scene/control/TextField;->replaceText(IILjava/lang/String;)V

    .line 577
    move-object v8, v0

    move-wide v9, v4

    move-wide v11, v6

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->scrollAfterDelete(DD)V

    .line 578
    return-void
.end method

.method public scrollAfterDelete(DD)V
    .locals 23

    .prologue
    .line 600
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-wide/from16 v4, p1

    .local v4, "textMaxXOld":D
    move-wide/from16 v6, p3

    .local v6, "caretMaxXOld":D
    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v14}, Ljavafx/scene/text/Text;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v14

    move-object v8, v14

    .line 601
    .local v8, "textLayoutBounds":Ljavafx/geometry/Bounds;
    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    move-object v15, v8

    invoke-virtual {v14, v15}, Ljavafx/scene/text/Text;->localToParent(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v14

    move-object v9, v14

    .line 602
    .local v9, "textBounds":Ljavafx/geometry/Bounds;
    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->clip:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v14}, Ljavafx/scene/shape/Rectangle;->getBoundsInParent()Ljavafx/geometry/Bounds;

    move-result-object v14

    move-object v10, v14

    .line 603
    .local v10, "clipBounds":Ljavafx/geometry/Bounds;
    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v14}, Ljavafx/scene/shape/Path;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v14

    move-object v11, v14

    .line 605
    .local v11, "caretBounds":Ljavafx/geometry/Bounds;
    sget-object v14, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$8;->$SwitchMap$javafx$geometry$HPos:[I

    move-object v15, v3

    invoke-virtual {v15}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getHAlignment()Ljavafx/geometry/HPos;

    move-result-object v15

    invoke-virtual {v15}, Ljavafx/geometry/HPos;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 625
    move-object v14, v9

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v14

    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v16

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretWidth:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    add-double v16, v16, v18

    cmpg-double v14, v14, v16

    if-gez v14, :cond_1

    move-object v14, v9

    .line 626
    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v14

    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v16

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_1

    .line 627
    move-wide v14, v6

    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v16

    sub-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textTranslateX:Ljavafx/beans/property/DoubleProperty;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v16

    sub-double v14, v14, v16

    move-wide v12, v14

    .line 628
    .local v12, "delta":D
    move-object v14, v9

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v14

    move-wide/from16 v16, v12

    add-double v14, v14, v16

    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v16

    cmpg-double v14, v14, v16

    if-gez v14, :cond_0

    .line 629
    move-wide v14, v4

    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v16

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_5

    .line 630
    move-wide v14, v4

    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v16

    sub-double v14, v14, v16

    move-wide v12, v14

    .line 635
    :cond_0
    :goto_0
    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textTranslateX:Ljavafx/beans/property/DoubleProperty;

    move-object v15, v3

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textTranslateX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v15}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v15

    move-wide/from16 v17, v12

    add-double v15, v15, v17

    invoke-virtual/range {v14 .. v16}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 639
    .end local v12    # "delta":D
    :cond_1
    :goto_1
    move-object v14, v3

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->updateCaretOff()V

    .line 640
    return-void

    .line 607
    :pswitch_0
    move-object v14, v9

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v14

    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v16

    cmpl-double v14, v14, v16

    if-lez v14, :cond_4

    .line 608
    move-wide v14, v6

    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v16

    sub-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textTranslateX:Ljavafx/beans/property/DoubleProperty;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v16

    sub-double v14, v14, v16

    move-wide v12, v14

    .line 609
    .restart local v12    # "delta":D
    move-object v14, v9

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v14

    move-wide/from16 v16, v12

    add-double v14, v14, v16

    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v16

    cmpg-double v14, v14, v16

    if-gez v14, :cond_2

    .line 610
    move-wide v14, v4

    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v16

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_3

    .line 611
    move-wide v14, v4

    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v16

    sub-double v14, v14, v16

    move-wide v12, v14

    .line 616
    :cond_2
    :goto_2
    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textTranslateX:Ljavafx/beans/property/DoubleProperty;

    move-object v15, v3

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textTranslateX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v15}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v15

    move-wide/from16 v17, v12

    add-double v15, v15, v17

    invoke-virtual/range {v14 .. v16}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 617
    goto :goto_1

    .line 613
    :cond_3
    move-object v14, v10

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v14

    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v16

    sub-double v14, v14, v16

    move-wide v12, v14

    goto :goto_2

    .line 618
    .end local v12    # "delta":D
    :cond_4
    move-object v14, v3

    invoke-direct {v14}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->updateTextPos()V

    .line 620
    goto :goto_1

    .line 632
    .restart local v12    # "delta":D
    :cond_5
    move-object v14, v10

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v14

    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v16

    sub-double v14, v14, v16

    move-wide v12, v14

    goto/16 :goto_0

    .line 605
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected translateCaretPosition(I)I
    .locals 3

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move v1, p1

    .local v1, "cp":I
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    return v0
.end method

.method protected translateCaretPosition(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;
    .locals 3

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v1, p1

    .local v1, "p":Ljavafx/geometry/Point2D;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    return-object v0
.end method

.method protected updateCaretOff()V
    .locals 14

    .prologue
    .line 531
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    const-wide/16 v5, 0x0

    move-wide v1, v5

    .line 532
    .local v1, "delta":D
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v5}, Ljavafx/scene/shape/Path;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v5

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textTranslateX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v7}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v7

    add-double/2addr v5, v7

    move-wide v3, v5

    .line 537
    .local v3, "caretX":D
    move-wide v5, v3

    const-wide/16 v7, 0x0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_2

    .line 539
    move-wide v5, v3

    move-wide v1, v5

    .line 547
    :cond_0
    :goto_0
    sget-object v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$8;->$SwitchMap$javafx$geometry$HPos:[I

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getHAlignment()Ljavafx/geometry/HPos;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/geometry/HPos;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 560
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textTranslateX:Ljavafx/beans/property/DoubleProperty;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textTranslateX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v6}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v6

    move-wide v8, v1

    sub-double/2addr v6, v8

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretWidth:D

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 563
    :goto_1
    sget-boolean v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->SHOW_HANDLES:Z

    if-eqz v5, :cond_1

    .line 564
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    move-wide v6, v3

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v8}, Ljavafx/scene/layout/StackPane;->getWidth()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/layout/StackPane;->setLayoutX(D)V

    .line 566
    :cond_1
    return-void

    .line 540
    :cond_2
    move-wide v5, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textRight:Ljavafx/beans/value/ObservableDoubleValue;

    invoke-interface {v7}, Ljavafx/beans/value/ObservableDoubleValue;->get()D

    move-result-wide v7

    move-object v9, v0

    iget-wide v9, v9, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretWidth:D

    sub-double/2addr v7, v9

    cmpl-double v5, v5, v7

    if-lez v5, :cond_0

    .line 542
    move-wide v5, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textRight:Ljavafx/beans/value/ObservableDoubleValue;

    invoke-interface {v7}, Ljavafx/beans/value/ObservableDoubleValue;->get()D

    move-result-wide v7

    move-object v9, v0

    iget-wide v9, v9, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretWidth:D

    sub-double/2addr v7, v9

    sub-double/2addr v5, v7

    move-wide v1, v5

    goto :goto_0

    .line 549
    :pswitch_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textTranslateX:Ljavafx/beans/property/DoubleProperty;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textTranslateX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v6}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v6

    move-wide v8, v1

    sub-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 550
    goto :goto_1

    .line 553
    :pswitch_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textTranslateX:Ljavafx/beans/property/DoubleProperty;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textTranslateX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v6}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v6

    move-wide v8, v1

    sub-double/2addr v6, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textRight:Ljavafx/beans/value/ObservableDoubleValue;

    .line 554
    invoke-interface {v8}, Ljavafx/beans/value/ObservableDoubleValue;->get()D

    move-result-wide v8

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v10}, Ljavafx/scene/text/Text;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v10

    sub-double/2addr v8, v10

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->caretWidth:D

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    sub-double/2addr v8, v10

    .line 553
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 556
    goto :goto_1

    .line 547
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
