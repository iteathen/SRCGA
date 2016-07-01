.class Lcom/sun/javafx/scene/control/skin/ColorPalette$1;
.super Ljava/lang/Object;
.source "ColorPalette.java"

# interfaces
.implements Ljavafx/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/ColorPalette;-><init>(Ljavafx/scene/control/ColorPicker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/event/EventHandler",
        "<",
        "Ljavafx/event/ActionEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

.field final synthetic val$colorPicker:Ljavafx/scene/control/ColorPicker;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ColorPalette;Ljavafx/scene/control/ColorPicker;)V
    .locals 5

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;->val$colorPicker:Ljavafx/scene/control/ColorPicker;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/ColorPalette$1;Ljavafx/scene/control/ColorPicker;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/paint/Color;Ljavafx/scene/paint/Color;)V
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

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;->lambda$handle$301(Ljavafx/scene/control/ColorPicker;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/paint/Color;Ljavafx/scene/paint/Color;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/ColorPalette$1;Ljavafx/scene/control/ColorPicker;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;->lambda$handle$302(Ljavafx/scene/control/ColorPicker;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/control/ColorPicker;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;->lambda$handle$303(Ljavafx/scene/control/ColorPicker;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/skin/ColorPalette$1;Ljavafx/stage/WindowEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;->lambda$handle$304(Ljavafx/stage/WindowEvent;)V

    return-void
.end method

.method private synthetic lambda$handle$301(Ljavafx/scene/control/ColorPicker;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/paint/Color;Ljavafx/scene/paint/Color;)V
    .locals 7

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$1;
    move-object v1, p1

    .local v1, "colorPicker":Ljavafx/scene/control/ColorPicker;
    move-object v2, p2

    .local v2, "ov":Ljavafx/beans/value/ObservableValue;
    move-object v3, p3

    .local v3, "t1":Ljavafx/scene/paint/Color;
    move-object v4, p4

    .local v4, "t2":Ljavafx/scene/paint/Color;
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorDialog:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->customColorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/scene/control/ColorPicker;->setValue(Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method private synthetic lambda$handle$302(Ljavafx/scene/control/ColorPicker;)V
    .locals 7

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$1;
    move-object v1, p1

    .local v1, "colorPicker":Ljavafx/scene/control/ColorPicker;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorDialog:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->customColorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/paint/Color;

    move-object v2, v3

    .line 114
    .local v2, "customColor":Ljavafx/scene/paint/Color;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$100(Lcom/sun/javafx/scene/control/skin/ColorPalette;)V

    .line 115
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ColorPicker;->getCustomColors()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 116
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->updateSelection(Ljavafx/scene/paint/Color;)V

    .line 117
    move-object v3, v1

    new-instance v4, Ljavafx/event/ActionEvent;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljavafx/event/ActionEvent;-><init>()V

    invoke-static {v3, v4}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 118
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ColorPicker;->hide()V

    .line 119
    return-void
.end method

.method private static synthetic lambda$handle$303(Ljavafx/scene/control/ColorPicker;)V
    .locals 5

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "colorPicker":Ljavafx/scene/control/ColorPicker;
    move-object v1, v0

    new-instance v2, Ljavafx/event/ActionEvent;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/event/ActionEvent;-><init>()V

    invoke-static {v1, v2}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 122
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ColorPicker;->hide()V

    .line 123
    return-void
.end method

.method private synthetic lambda$handle$304(Ljavafx/stage/WindowEvent;)V
    .locals 4

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$1;
    move-object v1, p1

    .local v1, "event":Ljavafx/stage/WindowEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$000(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/control/PopupControl;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$000(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/control/PopupControl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/PopupControl;->setAutoHide(Z)V

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method public handle(Ljavafx/event/ActionEvent;)V
    .locals 7

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$1;
    move-object v1, p1

    .local v1, "t":Ljavafx/event/ActionEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorDialog:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    if-nez v2, :cond_0

    .line 108
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    new-instance v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$000(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/control/PopupControl;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;-><init>(Ljavafx/stage/Window;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorDialog:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    .line 109
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorDialog:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->customColorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;->val$colorPicker:Ljavafx/scene/control/ColorPicker;

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/skin/ColorPalette$1$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ColorPalette$1;Ljavafx/scene/control/ColorPicker;)Ljavafx/beans/value/ChangeListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 112
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorDialog:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;->val$colorPicker:Ljavafx/scene/control/ColorPicker;

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/skin/ColorPalette$1$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ColorPalette$1;Ljavafx/scene/control/ColorPicker;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->setOnSave(Ljava/lang/Runnable;)V

    .line 120
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorDialog:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;->val$colorPicker:Ljavafx/scene/control/ColorPicker;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ColorPalette$1$$Lambda$3;->lambdaFactory$(Ljavafx/scene/control/ColorPicker;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->setOnUse(Ljava/lang/Runnable;)V

    .line 125
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorDialog:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;->val$colorPicker:Ljavafx/scene/control/ColorPicker;

    invoke-virtual {v3}, Ljavafx/scene/control/ColorPicker;->valueProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/paint/Color;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->setCurrentColor(Ljavafx/scene/paint/Color;)V

    .line 126
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$000(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/control/PopupControl;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$000(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/control/PopupControl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/control/PopupControl;->setAutoHide(Z)V

    .line 127
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorDialog:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->show()V

    .line 128
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorDialog:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ColorPalette$1$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ColorPalette$1;)Ljavafx/event/EventHandler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->setOnHidden(Ljavafx/event/EventHandler;)V

    .line 131
    return-void
.end method

.method public bridge synthetic handle(Ljavafx/event/Event;)V
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/event/ActionEvent;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;->handle(Ljavafx/event/ActionEvent;)V

    return-void
.end method
