.class public final Lcom/sun/javafx/css/parser/Css2Bin;
.super Ljava/lang/Object;
.source "Css2Bin.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/Css2Bin;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToBinary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "ifname":Ljava/lang/String;
    move-object v1, p1

    .local v1, "ofname":Ljava/lang/String;
    move-object v4, v0

    if-eqz v4, :cond_0

    move-object v4, v1

    if-nez v4, :cond_1

    .line 59
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "parameters cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 62
    :cond_1
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 63
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "input file and output file cannot be the same"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 66
    :cond_2
    new-instance v4, Ljava/io/File;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 67
    .local v2, "source":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 68
    .local v3, "destination":Ljava/io/File;
    move-object v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Lcom/sun/javafx/css/Stylesheet;->convertToBinary(Ljava/io/File;Ljava/io/File;)V

    .line 70
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "args":[Ljava/lang/String;
    move-object v3, v0

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "expected file name as argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 43
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    :try_start_0
    aget-object v3, v3, v4

    move-object v1, v3

    .line 44
    .local v1, "ifname":Ljava/lang/String;
    move-object v3, v0

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    move-object v3, v0

    const/4 v4, 0x1

    aget-object v3, v3, v4

    .line 45
    :goto_0
    move-object v2, v3

    .line 47
    .local v2, "ofname":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/sun/javafx/css/parser/Css2Bin;->convertToBinary(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .end local v1    # "ifname":Ljava/lang/String;
    .end local v2    # "ofname":Ljava/lang/String;
    :goto_1
    return-void

    .line 44
    .restart local v1    # "ifname":Ljava/lang/String;
    :cond_1
    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    const/16 v6, 0x2e

    .line 45
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bss"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 49
    .end local v1    # "ifname":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 51
    move-object v3, v1

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v4}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 52
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_1
.end method
