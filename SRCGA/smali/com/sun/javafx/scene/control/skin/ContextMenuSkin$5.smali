.class synthetic Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$5;
.super Ljava/lang/Object;
.source "ContextMenuSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$javafx$scene$input$KeyCode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 68
    invoke-static {}, Ljavafx/scene/input/KeyCode;->values()[Ljavafx/scene/input/KeyCode;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$5;->$SwitchMap$javafx$scene$input$KeyCode:[I

    :try_start_0
    sget-object v1, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$5;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->ENTER:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$5;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->SPACE:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v0, v1

    goto :goto_1
.end method
