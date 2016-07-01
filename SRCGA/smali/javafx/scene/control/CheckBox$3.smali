.class synthetic Ljavafx/scene/control/CheckBox$3;
.super Ljava/lang/Object;
.source "CheckBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/CheckBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$javafx$scene$AccessibleAttribute:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 272
    invoke-static {}, Ljavafx/scene/AccessibleAttribute;->values()[Ljavafx/scene/AccessibleAttribute;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Ljavafx/scene/control/CheckBox$3;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    :try_start_0
    sget-object v1, Ljavafx/scene/control/CheckBox$3;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    sget-object v2, Ljavafx/scene/AccessibleAttribute;->SELECTED:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v2}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Ljavafx/scene/control/CheckBox$3;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    sget-object v2, Ljavafx/scene/AccessibleAttribute;->INDETERMINATE:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v2}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

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
