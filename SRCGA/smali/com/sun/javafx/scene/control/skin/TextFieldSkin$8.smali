.class synthetic Lcom/sun/javafx/scene/control/skin/TextFieldSkin$8;
.super Ljava/lang/Object;
.source "TextFieldSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$javafx$geometry$HPos:[I

.field static final synthetic $SwitchMap$javafx$geometry$VPos:[I

.field static final synthetic $SwitchMap$javafx$scene$AccessibleAttribute:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 821
    invoke-static {}, Ljavafx/scene/AccessibleAttribute;->values()[Ljavafx/scene/AccessibleAttribute;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$8;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    :try_start_0
    sget-object v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$8;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    sget-object v2, Ljavafx/scene/AccessibleAttribute;->BOUNDS_FOR_RANGE:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v2}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$8;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    sget-object v2, Ljavafx/scene/AccessibleAttribute;->OFFSET_AT_POINT:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v2}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 746
    :goto_1
    invoke-static {}, Ljavafx/geometry/VPos;->values()[Ljavafx/geometry/VPos;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$8;->$SwitchMap$javafx$geometry$VPos:[I

    :try_start_2
    sget-object v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$8;->$SwitchMap$javafx$geometry$VPos:[I

    sget-object v2, Ljavafx/geometry/VPos;->TOP:Ljavafx/geometry/VPos;

    invoke-virtual {v2}, Ljavafx/geometry/VPos;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$8;->$SwitchMap$javafx$geometry$VPos:[I

    sget-object v2, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual {v2}, Ljavafx/geometry/VPos;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$8;->$SwitchMap$javafx$geometry$VPos:[I

    sget-object v2, Ljavafx/geometry/VPos;->BOTTOM:Ljavafx/geometry/VPos;

    invoke-virtual {v2}, Ljavafx/geometry/VPos;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 485
    :goto_4
    invoke-static {}, Ljavafx/geometry/HPos;->values()[Ljavafx/geometry/HPos;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$8;->$SwitchMap$javafx$geometry$HPos:[I

    :try_start_5
    sget-object v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$8;->$SwitchMap$javafx$geometry$HPos:[I

    sget-object v2, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    invoke-virtual {v2}, Ljavafx/geometry/HPos;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$8;->$SwitchMap$javafx$geometry$HPos:[I

    sget-object v2, Ljavafx/geometry/HPos;->RIGHT:Ljavafx/geometry/HPos;

    invoke-virtual {v2}, Ljavafx/geometry/HPos;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    sget-object v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$8;->$SwitchMap$javafx$geometry$HPos:[I

    sget-object v2, Ljavafx/geometry/HPos;->LEFT:Ljavafx/geometry/HPos;

    invoke-virtual {v2}, Ljavafx/geometry/HPos;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_7
    return-void

    .line 821
    :catch_0
    move-exception v1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v0, v1

    goto :goto_1

    .line 746
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

    .line 485
    :catch_5
    move-exception v1

    move-object v0, v1

    goto :goto_5

    :catch_6
    move-exception v1

    move-object v0, v1

    goto :goto_6

    :catch_7
    move-exception v1

    move-object v0, v1

    goto :goto_7
.end method
