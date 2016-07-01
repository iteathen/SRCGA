.class final enum Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;
.super Ljava/lang/Enum;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SettingsParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;",
        ">;",
        "Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

.field public static final enum INSENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

.field public static final enum LENIENT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

.field public static final enum SENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

.field public static final enum STRICT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 2139
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SENSITIVE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->SENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    .line 2140
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "INSENSITIVE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->INSENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    .line 2141
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "STRICT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->STRICT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    .line 2142
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "LENIENT"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->LENIENT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    .line 2138
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->SENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->INSENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->STRICT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->LENIENT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    aput-object v3, v1, v2

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->$VALUES:[Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2138
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;
    .locals 3

    .prologue
    .line 2138
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;
    .locals 1

    .prologue
    .line 2138
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->$VALUES:[Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-virtual {v0}, [Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    return-object v0
.end method


# virtual methods
.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 6

    .prologue
    .line 2152
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;
    move-object v1, p1

    .local v1, "context":Ljava/time/format/DateTimeParseContext;
    move-object v2, p2

    .local v2, "text":Ljava/lang/CharSequence;
    move v3, p3

    .local v3, "position":I
    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 2158
    :goto_0
    move v4, v3

    move v0, v4

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;
    return v0

    .line 2153
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;
    :pswitch_0
    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/time/format/DateTimeParseContext;->setCaseSensitive(Z)V

    goto :goto_0

    .line 2154
    :pswitch_1
    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/time/format/DateTimeParseContext;->setCaseSensitive(Z)V

    goto :goto_0

    .line 2155
    :pswitch_2
    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/time/format/DateTimeParseContext;->setStrict(Z)V

    goto :goto_0

    .line 2156
    :pswitch_3
    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/time/format/DateTimeParseContext;->setStrict(Z)V

    goto :goto_0

    .line 2152
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public print(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 4

    .prologue
    .line 2146
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;
    move-object v1, p1

    .local v1, "context":Ljava/time/format/DateTimePrintContext;
    move-object v2, p2

    .local v2, "buf":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2164
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2170
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Unreachable"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2165
    :pswitch_0
    const-string v1, "ParseCaseSensitive(true)"

    move-object v0, v1

    .line 2168
    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;
    :goto_0
    return-object v0

    .line 2166
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;
    :pswitch_1
    const-string v1, "ParseCaseSensitive(false)"

    move-object v0, v1

    goto :goto_0

    .line 2167
    :pswitch_2
    const-string v1, "ParseStrict(true)"

    move-object v0, v1

    goto :goto_0

    .line 2168
    :pswitch_3
    const-string v1, "ParseStrict(false)"

    move-object v0, v1

    goto :goto_0

    .line 2164
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
