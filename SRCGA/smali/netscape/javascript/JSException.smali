.class public Lnetscape/javascript/JSException;
.super Ljava/lang/RuntimeException;
.source "JSException.java"


# static fields
.field public static final EXCEPTION_TYPE_BOOLEAN:I = 0x5

.field public static final EXCEPTION_TYPE_EMPTY:I = -0x1

.field public static final EXCEPTION_TYPE_ERROR:I = 0x6

.field public static final EXCEPTION_TYPE_FUNCTION:I = 0x2

.field public static final EXCEPTION_TYPE_NUMBER:I = 0x4

.field public static final EXCEPTION_TYPE_OBJECT:I = 0x1

.field public static final EXCEPTION_TYPE_STRING:I = 0x3

.field public static final EXCEPTION_TYPE_VOID:I


# instance fields
.field protected filename:Ljava/lang/String;

.field protected lineno:I

.field protected message:Ljava/lang/String;

.field protected source:Ljava/lang/String;

.field protected tokenIndex:I

.field private wrappedException:Ljava/lang/Object;

.field private wrappedExceptionType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lnetscape/javascript/JSException;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lnetscape/javascript/JSException;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 5

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lnetscape/javascript/JSException;
    move v1, p1

    .local v1, "wrappedExceptionType":I
    move-object v2, p2

    .local v2, "wrappedException":Ljava/lang/Object;
    move-object v3, v0

    invoke-direct {v3}, Lnetscape/javascript/JSException;-><init>()V

    .line 110
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lnetscape/javascript/JSException;->wrappedExceptionType:I

    .line 111
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lnetscape/javascript/JSException;->wrappedException:Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lnetscape/javascript/JSException;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-direct/range {v2 .. v7}, Lnetscape/javascript/JSException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 8

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lnetscape/javascript/JSException;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, p2

    .local v2, "filename":Ljava/lang/String;
    move v3, p3

    .local v3, "lineno":I
    move-object v4, p4

    .local v4, "source":Ljava/lang/String;
    move v5, p5

    .local v5, "tokenIndex":I
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 118
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lnetscape/javascript/JSException;->message:Ljava/lang/String;

    .line 124
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lnetscape/javascript/JSException;->filename:Ljava/lang/String;

    .line 130
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Lnetscape/javascript/JSException;->lineno:I

    .line 136
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lnetscape/javascript/JSException;->source:Ljava/lang/String;

    .line 142
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Lnetscape/javascript/JSException;->tokenIndex:I

    .line 148
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Lnetscape/javascript/JSException;->wrappedExceptionType:I

    .line 154
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lnetscape/javascript/JSException;->wrappedException:Ljava/lang/Object;

    .line 92
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lnetscape/javascript/JSException;->message:Ljava/lang/String;

    .line 93
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lnetscape/javascript/JSException;->filename:Ljava/lang/String;

    .line 94
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lnetscape/javascript/JSException;->lineno:I

    .line 95
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lnetscape/javascript/JSException;->source:Ljava/lang/String;

    .line 96
    move-object v6, v0

    move v7, v5

    iput v7, v6, Lnetscape/javascript/JSException;->tokenIndex:I

    .line 97
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Lnetscape/javascript/JSException;->wrappedExceptionType:I

    .line 98
    return-void
.end method


# virtual methods
.method public getWrappedException()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lnetscape/javascript/JSException;
    move-object v1, v0

    iget-object v1, v1, Lnetscape/javascript/JSException;->wrappedException:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lnetscape/javascript/JSException;
    return-object v0
.end method

.method public getWrappedExceptionType()I
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lnetscape/javascript/JSException;
    move-object v1, v0

    iget v1, v1, Lnetscape/javascript/JSException;->wrappedExceptionType:I

    move v0, v1

    .end local v0    # "this":Lnetscape/javascript/JSException;
    return v0
.end method
