.class synthetic Ljavafx/animation/Animation$5;
.super Ljava/lang/Object;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$javafx$animation$Animation$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 905
    invoke-static {}, Ljavafx/animation/Animation$Status;->values()[Ljavafx/animation/Animation$Status;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Ljavafx/animation/Animation$5;->$SwitchMap$javafx$animation$Animation$Status:[I

    :try_start_0
    sget-object v1, Ljavafx/animation/Animation$5;->$SwitchMap$javafx$animation$Animation$Status:[I

    sget-object v2, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    invoke-virtual {v2}, Ljavafx/animation/Animation$Status;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Ljavafx/animation/Animation$5;->$SwitchMap$javafx$animation$Animation$Status:[I

    sget-object v2, Ljavafx/animation/Animation$Status;->PAUSED:Ljavafx/animation/Animation$Status;

    invoke-virtual {v2}, Ljavafx/animation/Animation$Status;->ordinal()I

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
