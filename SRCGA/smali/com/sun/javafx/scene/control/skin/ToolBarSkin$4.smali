.class synthetic Lcom/sun/javafx/scene/control/skin/ToolBarSkin$4;
.super Ljava/lang/Object;
.source "ToolBarSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$javafx$scene$AccessibleAction:[I

.field static final synthetic $SwitchMap$javafx$scene$AccessibleAttribute:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 778
    invoke-static {}, Ljavafx/scene/AccessibleAttribute;->values()[Ljavafx/scene/AccessibleAttribute;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$4;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    :try_start_0
    sget-object v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$4;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    sget-object v2, Ljavafx/scene/AccessibleAttribute;->OVERFLOW_BUTTON:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v2}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :goto_0
    invoke-static {}, Ljavafx/scene/AccessibleAction;->values()[Ljavafx/scene/AccessibleAction;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$4;->$SwitchMap$javafx$scene$AccessibleAction:[I

    :try_start_1
    sget-object v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$4;->$SwitchMap$javafx$scene$AccessibleAction:[I

    sget-object v2, Ljavafx/scene/AccessibleAction;->FIRE:Ljavafx/scene/AccessibleAction;

    invoke-virtual {v2}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$4;->$SwitchMap$javafx$scene$AccessibleAction:[I

    sget-object v2, Ljavafx/scene/AccessibleAction;->SHOW_MENU:Ljavafx/scene/AccessibleAction;

    invoke-virtual {v2}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return-void

    .line 778
    :catch_0
    move-exception v1

    move-object v0, v1

    goto :goto_0

    .line 685
    :catch_1
    move-exception v1

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v0, v1

    goto :goto_2
.end method
