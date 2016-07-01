.class public Lcom/sun/javafx/scene/control/behavior/DatePickerBehavior;
.super Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;
.source "DatePickerBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior",
        "<",
        "Ljava/time/LocalDate;",
        ">;"
    }
.end annotation


# static fields
.field protected static final DATE_PICKER_BINDINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/scene/control/behavior/KeyBinding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/DatePickerBehavior;->DATE_PICKER_BINDINGS:Ljava/util/List;

    .line 58
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/DatePickerBehavior;->DATE_PICKER_BINDINGS:Ljava/util/List;

    sget-object v1, Lcom/sun/javafx/scene/control/behavior/DatePickerBehavior;->COMBO_BOX_BASE_BINDINGS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 59
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/DatePicker;)V
    .locals 5

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/DatePickerBehavior;
    move-object v1, p1

    .local v1, "datePicker":Ljavafx/scene/control/DatePicker;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/control/behavior/DatePickerBehavior;->DATE_PICKER_BINDINGS:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;-><init>(Ljavafx/scene/control/ComboBoxBase;Ljava/util/List;)V

    .line 48
    return-void
.end method


# virtual methods
.method public onAutoHide()V
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/DatePickerBehavior;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/DatePickerBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/DatePicker;

    move-object v1, v3

    .line 65
    .local v1, "datePicker":Ljavafx/scene/control/DatePicker;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/DatePicker;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;

    move-object v2, v3

    .line 66
    .local v2, "cpSkin":Lcom/sun/javafx/scene/control/skin/DatePickerSkin;
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->syncWithAutoUpdate()V

    .line 69
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/DatePicker;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    invoke-super {v3}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->onAutoHide()V

    .line 70
    :cond_0
    return-void
.end method
