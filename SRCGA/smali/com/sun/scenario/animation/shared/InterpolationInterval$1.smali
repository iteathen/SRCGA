.class synthetic Lcom/sun/scenario/animation/shared/InterpolationInterval$1;
.super Ljava/lang/Object;
.source "InterpolationInterval.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/scenario/animation/shared/InterpolationInterval;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$javafx$animation$KeyValue$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 56
    invoke-static {}, Ljavafx/animation/KeyValue$Type;->values()[Ljavafx/animation/KeyValue$Type;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/scenario/animation/shared/InterpolationInterval$1;->$SwitchMap$javafx$animation$KeyValue$Type:[I

    :try_start_0
    sget-object v1, Lcom/sun/scenario/animation/shared/InterpolationInterval$1;->$SwitchMap$javafx$animation$KeyValue$Type:[I

    sget-object v2, Ljavafx/animation/KeyValue$Type;->BOOLEAN:Ljavafx/animation/KeyValue$Type;

    invoke-virtual {v2}, Ljavafx/animation/KeyValue$Type;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sun/scenario/animation/shared/InterpolationInterval$1;->$SwitchMap$javafx$animation$KeyValue$Type:[I

    sget-object v2, Ljavafx/animation/KeyValue$Type;->DOUBLE:Ljavafx/animation/KeyValue$Type;

    invoke-virtual {v2}, Ljavafx/animation/KeyValue$Type;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sun/scenario/animation/shared/InterpolationInterval$1;->$SwitchMap$javafx$animation$KeyValue$Type:[I

    sget-object v2, Ljavafx/animation/KeyValue$Type;->FLOAT:Ljavafx/animation/KeyValue$Type;

    invoke-virtual {v2}, Ljavafx/animation/KeyValue$Type;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sun/scenario/animation/shared/InterpolationInterval$1;->$SwitchMap$javafx$animation$KeyValue$Type:[I

    sget-object v2, Ljavafx/animation/KeyValue$Type;->INTEGER:Ljavafx/animation/KeyValue$Type;

    invoke-virtual {v2}, Ljavafx/animation/KeyValue$Type;->ordinal()I

    move-result v2

    const/4 v3, 0x4

    aput v3, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sun/scenario/animation/shared/InterpolationInterval$1;->$SwitchMap$javafx$animation$KeyValue$Type:[I

    sget-object v2, Ljavafx/animation/KeyValue$Type;->LONG:Ljavafx/animation/KeyValue$Type;

    invoke-virtual {v2}, Ljavafx/animation/KeyValue$Type;->ordinal()I

    move-result v2

    const/4 v3, 0x5

    aput v3, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sun/scenario/animation/shared/InterpolationInterval$1;->$SwitchMap$javafx$animation$KeyValue$Type:[I

    sget-object v2, Ljavafx/animation/KeyValue$Type;->OBJECT:Ljavafx/animation/KeyValue$Type;

    invoke-virtual {v2}, Ljavafx/animation/KeyValue$Type;->ordinal()I

    move-result v2

    const/4 v3, 0x6

    aput v3, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
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

    :catch_4
    move-exception v1

    move-object v0, v1

    goto :goto_4

    :catch_5
    move-exception v1

    move-object v0, v1

    goto :goto_5
.end method
