.class synthetic Ljava/time/format/DateTimeFormatterBuilder$4;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$java$time$format$SignStyle:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 2377
    invoke-static {}, Ljava/time/format/SignStyle;->values()[Ljava/time/format/SignStyle;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Ljava/time/format/DateTimeFormatterBuilder$4;->$SwitchMap$java$time$format$SignStyle:[I

    :try_start_0
    sget-object v1, Ljava/time/format/DateTimeFormatterBuilder$4;->$SwitchMap$java$time$format$SignStyle:[I

    sget-object v2, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    invoke-virtual {v2}, Ljava/time/format/SignStyle;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Ljava/time/format/DateTimeFormatterBuilder$4;->$SwitchMap$java$time$format$SignStyle:[I

    sget-object v2, Ljava/time/format/SignStyle;->ALWAYS:Ljava/time/format/SignStyle;

    invoke-virtual {v2}, Ljava/time/format/SignStyle;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Ljava/time/format/DateTimeFormatterBuilder$4;->$SwitchMap$java$time$format$SignStyle:[I

    sget-object v2, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    invoke-virtual {v2}, Ljava/time/format/SignStyle;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Ljava/time/format/DateTimeFormatterBuilder$4;->$SwitchMap$java$time$format$SignStyle:[I

    sget-object v2, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    invoke-virtual {v2}, Ljava/time/format/SignStyle;->ordinal()I

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
