.class public Lorg/apache/xerces/util/DefaultErrorHandler;
.super Ljava/lang/Object;
.source "DefaultErrorHandler.java"

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLErrorHandler;


# instance fields
.field protected fOut:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/DefaultErrorHandler;
    move-object v1, v0

    new-instance v2, Ljava/io/PrintWriter;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Lorg/apache/xerces/util/DefaultErrorHandler;-><init>(Ljava/io/PrintWriter;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/DefaultErrorHandler;
    move-object v1, p1

    .local v1, "out":Ljava/io/PrintWriter;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 102
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    .line 103
    return-void
.end method

.method private printError(Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLParseException;)V
    .locals 8

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/DefaultErrorHandler;
    move-object v1, p1

    .local v1, "type":Ljava/lang/String;
    move-object v2, p2

    .local v2, "ex":Lorg/apache/xerces/xni/parser/XMLParseException;
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 136
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 137
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 138
    move-object v5, v2

    invoke-virtual {v5}, Lorg/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 139
    .local v3, "systemId":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 140
    move-object v5, v3

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    move v4, v5

    .line 141
    .local v4, "index":I
    move v5, v4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 142
    move-object v5, v3

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 143
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 145
    .end local v4    # "index":I
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 146
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    move-object v6, v2

    invoke-virtual {v6}, Lorg/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 147
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 148
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    move-object v6, v2

    invoke-virtual {v6}, Lorg/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 149
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    move-object v6, v2

    invoke-virtual {v6}, Lorg/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 151
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    .line 152
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    .line 154
    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLParseException;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/DefaultErrorHandler;
    move-object v1, p1

    .local v1, "domain":Ljava/lang/String;
    move-object v2, p2

    .local v2, "key":Ljava/lang/String;
    move-object v3, p3

    .local v3, "ex":Lorg/apache/xerces/xni/parser/XMLParseException;
    move-object v4, v0

    const-string v5, "Error"

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/util/DefaultErrorHandler;->printError(Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLParseException;)V

    .line 119
    return-void
.end method

.method public fatalError(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLParseException;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/DefaultErrorHandler;
    move-object v1, p1

    .local v1, "domain":Ljava/lang/String;
    move-object v2, p2

    .local v2, "key":Ljava/lang/String;
    move-object v3, p3

    .local v3, "ex":Lorg/apache/xerces/xni/parser/XMLParseException;
    move-object v4, v0

    const-string v5, "Fatal Error"

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/util/DefaultErrorHandler;->printError(Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLParseException;)V

    .line 125
    move-object v4, v3

    throw v4
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLParseException;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/DefaultErrorHandler;
    move-object v1, p1

    .local v1, "domain":Ljava/lang/String;
    move-object v2, p2

    .local v2, "key":Ljava/lang/String;
    move-object v3, p3

    .local v3, "ex":Lorg/apache/xerces/xni/parser/XMLParseException;
    move-object v4, v0

    const-string v5, "Warning"

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/util/DefaultErrorHandler;->printError(Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLParseException;)V

    .line 113
    return-void
.end method
