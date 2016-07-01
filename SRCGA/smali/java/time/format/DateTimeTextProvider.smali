.class abstract Ljava/time/format/DateTimeTextProvider;
.super Ljava/util/spi/LocaleServiceProvider;
.source "DateTimeTextProvider.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeTextProvider;
    move-object v1, v0

    invoke-direct {v1}, Ljava/util/spi/LocaleServiceProvider;-><init>()V

    return-void
.end method

.method static getInstance()Ljava/time/format/DateTimeTextProvider;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Ljava/time/format/SimpleDateTimeTextProvider;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/time/format/SimpleDateTimeTextProvider;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract getText(Ljava/time/temporal/TemporalField;JLjava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract getTextIterator(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/time/format/TextStyle;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end method
