.class Ljava/time/format/DateTimeFormatterBuilder$DefaultingParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultingParser"
.end annotation


# instance fields
.field private final field:Ljava/time/temporal/TemporalField;

.field private final value:J


# direct methods
.method constructor <init>(Ljava/time/temporal/TemporalField;J)V
    .locals 8

    .prologue
    .line 2182
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$DefaultingParser;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-wide v2, p2

    .local v2, "value":J
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 2183
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljava/time/format/DateTimeFormatterBuilder$DefaultingParser;->field:Ljava/time/temporal/TemporalField;

    .line 2184
    move-object v4, v0

    move-wide v5, v2

    iput-wide v5, v4, Ljava/time/format/DateTimeFormatterBuilder$DefaultingParser;->value:J

    .line 2185
    return-void
.end method


# virtual methods
.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 10

    .prologue
    .line 2192
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$DefaultingParser;
    move-object v1, p1

    .local v1, "context":Ljava/time/format/DateTimeParseContext;
    move-object v2, p2

    .local v2, "text":Ljava/lang/CharSequence;
    move v3, p3

    .local v3, "position":I
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeFormatterBuilder$DefaultingParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v4, v5}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_0

    .line 2193
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeFormatterBuilder$DefaultingParser;->field:Ljava/time/temporal/TemporalField;

    move-object v6, v0

    iget-wide v6, v6, Ljava/time/format/DateTimeFormatterBuilder$DefaultingParser;->value:J

    move v8, v3

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v4

    .line 2195
    :cond_0
    move v4, v3

    move v0, v4

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$DefaultingParser;
    return v0
.end method

.method public print(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 4

    .prologue
    .line 2188
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$DefaultingParser;
    move-object v1, p1

    .local v1, "context":Ljava/time/format/DateTimePrintContext;
    move-object v2, p2

    .local v2, "buf":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$DefaultingParser;
    return v0
.end method
