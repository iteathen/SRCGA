.class synthetic Lcom/sun/javafx/scene/control/skin/TreeViewSkin$2;
.super Ljava/lang/Object;
.source "TreeViewSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/TreeViewSkin;
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
    .line 536
    invoke-static {}, Ljavafx/scene/AccessibleAction;->values()[Ljavafx/scene/AccessibleAction;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$2;->$SwitchMap$javafx$scene$AccessibleAction:[I

    :try_start_0
    sget-object v1, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$2;->$SwitchMap$javafx$scene$AccessibleAction:[I

    sget-object v2, Ljavafx/scene/AccessibleAction;->SHOW_ITEM:Ljavafx/scene/AccessibleAction;

    invoke-virtual {v2}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$2;->$SwitchMap$javafx$scene$AccessibleAction:[I

    sget-object v2, Ljavafx/scene/AccessibleAction;->SET_SELECTED_ITEMS:Ljavafx/scene/AccessibleAction;

    invoke-virtual {v2}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 501
    :goto_1
    invoke-static {}, Ljavafx/scene/AccessibleAttribute;->values()[Ljavafx/scene/AccessibleAttribute;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$2;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    :try_start_2
    sget-object v1, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$2;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    sget-object v2, Ljavafx/scene/AccessibleAttribute;->FOCUS_ITEM:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v2}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$2;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    sget-object v2, Ljavafx/scene/AccessibleAttribute;->ROW_AT_INDEX:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v2}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$2;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    sget-object v2, Ljavafx/scene/AccessibleAttribute;->SELECTED_ITEMS:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v2}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$2;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    sget-object v2, Ljavafx/scene/AccessibleAttribute;->VERTICAL_SCROLLBAR:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v2}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v2

    const/4 v3, 0x4

    aput v3, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v1, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$2;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    sget-object v2, Ljavafx/scene/AccessibleAttribute;->HORIZONTAL_SCROLLBAR:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v2}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v2

    const/4 v3, 0x5

    aput v3, v1, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    return-void

    .line 536
    :catch_0
    move-exception v1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v0, v1

    goto :goto_1

    .line 501
    :catch_2
    move-exception v1

    move-object v0, v1

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v0, v1

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v0, v1

    goto :goto_4

    :catch_5
    move-exception v1

    move-object v0, v1

    goto :goto_5

    :catch_6
    move-exception v1

    move-object v0, v1

    goto :goto_6
.end method
