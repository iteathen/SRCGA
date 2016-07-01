.class synthetic Ljavafx/scene/paint/LinearGradient$1;
.super Ljava/lang/Object;
.source "LinearGradient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/paint/LinearGradient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$javafx$scene$paint$CycleMethod:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 342
    invoke-static {}, Ljavafx/scene/paint/CycleMethod;->values()[Ljavafx/scene/paint/CycleMethod;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Ljavafx/scene/paint/LinearGradient$1;->$SwitchMap$javafx$scene$paint$CycleMethod:[I

    :try_start_0
    sget-object v1, Ljavafx/scene/paint/LinearGradient$1;->$SwitchMap$javafx$scene$paint$CycleMethod:[I

    sget-object v2, Ljavafx/scene/paint/CycleMethod;->REFLECT:Ljavafx/scene/paint/CycleMethod;

    invoke-virtual {v2}, Ljavafx/scene/paint/CycleMethod;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Ljavafx/scene/paint/LinearGradient$1;->$SwitchMap$javafx$scene$paint$CycleMethod:[I

    sget-object v2, Ljavafx/scene/paint/CycleMethod;->REPEAT:Ljavafx/scene/paint/CycleMethod;

    invoke-virtual {v2}, Ljavafx/scene/paint/CycleMethod;->ordinal()I

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
