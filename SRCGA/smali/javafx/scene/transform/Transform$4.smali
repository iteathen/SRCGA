.class synthetic Ljavafx/scene/transform/Transform$4;
.super Ljava/lang/Object;
.source "Transform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/transform/Transform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$javafx$scene$transform$MatrixType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 388
    invoke-static {}, Ljavafx/scene/transform/MatrixType;->values()[Ljavafx/scene/transform/MatrixType;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Ljavafx/scene/transform/Transform$4;->$SwitchMap$javafx$scene$transform$MatrixType:[I

    :try_start_0
    sget-object v1, Ljavafx/scene/transform/Transform$4;->$SwitchMap$javafx$scene$transform$MatrixType:[I

    sget-object v2, Ljavafx/scene/transform/MatrixType;->MT_2D_2x3:Ljavafx/scene/transform/MatrixType;

    invoke-virtual {v2}, Ljavafx/scene/transform/MatrixType;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Ljavafx/scene/transform/Transform$4;->$SwitchMap$javafx$scene$transform$MatrixType:[I

    sget-object v2, Ljavafx/scene/transform/MatrixType;->MT_2D_3x3:Ljavafx/scene/transform/MatrixType;

    invoke-virtual {v2}, Ljavafx/scene/transform/MatrixType;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Ljavafx/scene/transform/Transform$4;->$SwitchMap$javafx$scene$transform$MatrixType:[I

    sget-object v2, Ljavafx/scene/transform/MatrixType;->MT_3D_3x4:Ljavafx/scene/transform/MatrixType;

    invoke-virtual {v2}, Ljavafx/scene/transform/MatrixType;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Ljavafx/scene/transform/Transform$4;->$SwitchMap$javafx$scene$transform$MatrixType:[I

    sget-object v2, Ljavafx/scene/transform/MatrixType;->MT_3D_4x4:Ljavafx/scene/transform/MatrixType;

    invoke-virtual {v2}, Ljavafx/scene/transform/MatrixType;->ordinal()I

    move-result v2

    const/4 v3, 0x4

    aput v3, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v0, v1

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v0, v1

    goto :goto_3
.end method
