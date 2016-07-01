.class public Ljava/time/format/DateTimeParseException;
.super Ljava/time/DateTimeException;
.source "DateTimeParseException.java"


# static fields
.field private static final serialVersionUID:J = 0x3bbd215ce3915525L


# instance fields
.field private final errorIndex:I

.field private final parsedString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 6

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "parsedData":Ljava/lang/CharSequence;
    move v3, p3

    .local v3, "errorIndex":I
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    .line 69
    move-object v4, v0

    move-object v5, v2

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Ljava/time/format/DateTimeParseException;->parsedString:Ljava/lang/String;

    .line 70
    move-object v4, v0

    move v5, v3

    iput v5, v4, Ljava/time/format/DateTimeParseException;->errorIndex:I

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Throwable;)V
    .locals 8

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "parsedData":Ljava/lang/CharSequence;
    move v3, p3

    .local v3, "errorIndex":I
    move-object v4, p4

    .local v4, "cause":Ljava/lang/Throwable;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v4

    invoke-direct {v5, v6, v7}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    move-object v5, v0

    move-object v6, v2

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Ljava/time/format/DateTimeParseException;->parsedString:Ljava/lang/String;

    .line 84
    move-object v5, v0

    move v6, v3

    iput v6, v5, Ljava/time/format/DateTimeParseException;->errorIndex:I

    .line 85
    return-void
.end method


# virtual methods
.method public getErrorIndex()I
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseException;
    move-object v1, v0

    iget v1, v1, Ljava/time/format/DateTimeParseException;->errorIndex:I

    move v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeParseException;
    return v0
.end method

.method public getParsedString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseException;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/format/DateTimeParseException;->parsedString:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeParseException;
    return-object v0
.end method
