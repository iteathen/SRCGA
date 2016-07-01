.class abstract Ljava/time/format/DateTimeFormatStyleProvider;
.super Ljava/util/spi/LocaleServiceProvider;
.source "DateTimeFormatStyleProvider.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatStyleProvider;
    move-object v1, v0

    invoke-direct {v1}, Ljava/util/spi/LocaleServiceProvider;-><init>()V

    return-void
.end method

.method static getInstance()Ljava/time/format/DateTimeFormatStyleProvider;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Ljava/time/format/SimpleDateTimeFormatStyleProvider;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/time/format/SimpleDateTimeFormatStyleProvider;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract getFormatter(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;Ljava/time/chrono/AbstractChronology;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;
.end method
