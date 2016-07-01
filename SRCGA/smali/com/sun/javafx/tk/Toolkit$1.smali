.class synthetic Lcom/sun/javafx/tk/Toolkit$1;
.super Ljava/lang/Object;
.source "Toolkit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/tk/Toolkit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$javafx$scene$effect$BlurType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 731
    invoke-static {}, Ljavafx/scene/effect/BlurType;->values()[Ljavafx/scene/effect/BlurType;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/javafx/tk/Toolkit$1;->$SwitchMap$javafx$scene$effect$BlurType:[I

    :try_start_0
    sget-object v1, Lcom/sun/javafx/tk/Toolkit$1;->$SwitchMap$javafx$scene$effect$BlurType:[I

    sget-object v2, Ljavafx/scene/effect/BlurType;->ONE_PASS_BOX:Ljavafx/scene/effect/BlurType;

    invoke-virtual {v2}, Ljavafx/scene/effect/BlurType;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sun/javafx/tk/Toolkit$1;->$SwitchMap$javafx$scene$effect$BlurType:[I

    sget-object v2, Ljavafx/scene/effect/BlurType;->TWO_PASS_BOX:Ljavafx/scene/effect/BlurType;

    invoke-virtual {v2}, Ljavafx/scene/effect/BlurType;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sun/javafx/tk/Toolkit$1;->$SwitchMap$javafx$scene$effect$BlurType:[I

    sget-object v2, Ljavafx/scene/effect/BlurType;->THREE_PASS_BOX:Ljavafx/scene/effect/BlurType;

    invoke-virtual {v2}, Ljavafx/scene/effect/BlurType;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
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
.end method
