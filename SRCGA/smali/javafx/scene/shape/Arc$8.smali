.class synthetic Ljavafx/scene/shape/Arc$8;
.super Ljava/lang/Object;
.source "Arc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/shape/Arc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$javafx$scene$shape$ArcType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 386
    invoke-static {}, Ljavafx/scene/shape/ArcType;->values()[Ljavafx/scene/shape/ArcType;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Ljavafx/scene/shape/Arc$8;->$SwitchMap$javafx$scene$shape$ArcType:[I

    :try_start_0
    sget-object v1, Ljavafx/scene/shape/Arc$8;->$SwitchMap$javafx$scene$shape$ArcType:[I

    sget-object v2, Ljavafx/scene/shape/ArcType;->OPEN:Ljavafx/scene/shape/ArcType;

    invoke-virtual {v2}, Ljavafx/scene/shape/ArcType;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Ljavafx/scene/shape/Arc$8;->$SwitchMap$javafx$scene$shape$ArcType:[I

    sget-object v2, Ljavafx/scene/shape/ArcType;->CHORD:Ljavafx/scene/shape/ArcType;

    invoke-virtual {v2}, Ljavafx/scene/shape/ArcType;->ordinal()I

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
