.class Ljava/time/format/DateTimeFormatterBuilder$2;
.super Ljava/time/format/DateTimeTextProvider;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/util/Map;)Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/time/format/DateTimeFormatterBuilder;

.field final synthetic val$store:Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;


# direct methods
.method constructor <init>(Ljava/time/format/DateTimeFormatterBuilder;Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;)V
    .locals 5

    .prologue
    .line 728
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$2;
    move-object v1, p1

    .local v1, "this$0":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljava/time/format/DateTimeFormatterBuilder$2;->this$0:Ljava/time/format/DateTimeFormatterBuilder;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljava/time/format/DateTimeFormatterBuilder$2;->val$store:Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;

    move-object v3, v0

    invoke-direct {v3}, Ljava/time/format/DateTimeTextProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    .prologue
    .line 739
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$2;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/util/Locale;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$2;
    return-object v0
.end method

.method public getText(Ljava/time/temporal/TemporalField;JLjava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 731
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$2;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-wide v2, p2

    .local v2, "value":J
    move-object v4, p4

    .local v4, "style":Ljava/time/format/TextStyle;
    move-object v5, p5

    .local v5, "locale":Ljava/util/Locale;
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeFormatterBuilder$2;->val$store:Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;

    move-wide v7, v2

    move-object v9, v4

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;->getText(JLjava/time/format/TextStyle;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$2;
    return-object v0
.end method

.method public getTextIterator(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;
    .locals 6
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

    .prologue
    .line 735
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$2;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, p2

    .local v2, "style":Ljava/time/format/TextStyle;
    move-object v3, p3

    .local v3, "locale":Ljava/util/Locale;
    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeFormatterBuilder$2;->val$store:Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;->getTextIterator(Ljava/time/format/TextStyle;)Ljava/util/Iterator;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$2;
    return-object v0
.end method
