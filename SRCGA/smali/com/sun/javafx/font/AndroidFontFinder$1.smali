.class final Lcom/sun/javafx/font/AndroidFontFinder$1;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "AndroidFontFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/font/AndroidFontFinder;->parseSystemDefaultFonts(Ljava/io/InputStream;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static final DASH:C = '-'

.field private static final FAMILY:Ljava/lang/String; = "family"

.field private static final FILE:Ljava/lang/String; = "file"

.field private static final FILESET:Ljava/lang/String; = "fileset"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final NAMESET:Ljava/lang/String; = "nameset"

.field private static final SPACE:C = ' '


# instance fields
.field final filesets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field inFamily:Z

.field inFile:Z

.field inFileset:Z

.field inName:Z

.field inNameset:Z

.field private final namesets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final styles:[Ljava/lang/String;

.field final synthetic val$familyToFontListMap:Ljava/util/HashMap;

.field final synthetic val$fontToFamilyNameMap:Ljava/util/HashMap;

.field final synthetic val$fontToFileMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 10

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/AndroidFontFinder$1;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/font/AndroidFontFinder$1;->val$fontToFileMap:Ljava/util/HashMap;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/font/AndroidFontFinder$1;->val$fontToFamilyNameMap:Ljava/util/HashMap;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/font/AndroidFontFinder$1;->val$familyToFontListMap:Ljava/util/HashMap;

    move-object v4, v0

    invoke-direct {v4}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 134
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/sun/javafx/font/AndroidFontFinder$1;->filesets:Ljava/util/List;

    .line 136
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/javafx/font/AndroidFontFinder$1;->inFamily:Z

    .line 137
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/javafx/font/AndroidFontFinder$1;->inFile:Z

    .line 138
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/javafx/font/AndroidFontFinder$1;->inFileset:Z

    .line 139
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/javafx/font/AndroidFontFinder$1;->inName:Z

    .line 140
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/javafx/font/AndroidFontFinder$1;->inNameset:Z

    .line 142
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/sun/javafx/font/AndroidFontFinder$1;->namesets:Ljava/util/List;

    .line 143
    move-object v4, v0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-string v8, "regular"

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    const-string v8, "bold"

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x2

    const-string v8, "italic"

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x3

    const-string v8, "bold italic"

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/font/AndroidFontFinder$1;->styles:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/AndroidFontFinder$1;
    move-object v1, p1

    .local v1, "ch":[C
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "length":I
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/font/AndroidFontFinder$1;->inName:Z

    if-eqz v5, :cond_1

    .line 149
    new-instance v5, Ljava/lang/String;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    .line 150
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 151
    .local v4, "nameset":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/font/AndroidFontFinder$1;->namesets:Ljava/util/List;

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 152
    .line 156
    .end local v4    # "nameset":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/font/AndroidFontFinder$1;->inFile:Z

    if-eqz v5, :cond_0

    .line 153
    new-instance v5, Ljava/lang/String;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    move-object v4, v5

    .line 154
    .local v4, "fileset":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/font/AndroidFontFinder$1;->filesets:Ljava/util/List;

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 160
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/font/AndroidFontFinder$1;
    move-object/from16 v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "qName":Ljava/lang/String;
    move-object v14, v3

    const-string v15, "family"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 161
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/javafx/font/AndroidFontFinder$1;->namesets:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v4, v14

    :goto_0
    move-object v14, v4

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    move-object v14, v4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object v5, v14

    .line 162
    .local v5, "family":Ljava/lang/String;
    const/4 v14, 0x0

    move v6, v14

    .line 163
    .local v6, "i":I
    move-object v14, v5

    const/16 v15, 0x2d

    const/16 v16, 0x20

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    move-object v7, v14

    .line 164
    .local v7, "familyName":Ljava/lang/String;
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/javafx/font/AndroidFontFinder$1;->filesets:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v8, v14

    :cond_0
    :goto_1
    move-object v14, v8

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    move-object v14, v8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object v9, v14

    .line 165
    .local v9, "file":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/javafx/font/AndroidFontFinder$1;->styles:[Ljava/lang/String;

    move/from16 v16, v6

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v10, v14

    .line 166
    .local v10, "fullName":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "/system/fonts"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v9

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v11, v14

    .line 168
    .local v11, "fullFile":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    move-object/from16 v16, v11

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v12, v14

    .line 169
    .local v12, "f":Ljava/io/File;
    move-object v14, v12

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object v14, v12

    invoke-virtual {v14}, Ljava/io/File;->canRead()Z

    move-result v14

    if-nez v14, :cond_1

    .line 170
    goto :goto_1

    .line 172
    :cond_1
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/javafx/font/AndroidFontFinder$1;->val$fontToFileMap:Ljava/util/HashMap;

    move-object v15, v10

    move-object/from16 v16, v11

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 173
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/javafx/font/AndroidFontFinder$1;->val$fontToFamilyNameMap:Ljava/util/HashMap;

    move-object v15, v10

    move-object/from16 v16, v7

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 174
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/javafx/font/AndroidFontFinder$1;->val$familyToFontListMap:Ljava/util/HashMap;

    move-object v15, v7

    .line 175
    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    move-object v13, v14

    .line 176
    .local v13, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v14, v13

    if-nez v14, :cond_2

    .line 177
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v14

    .line 178
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/javafx/font/AndroidFontFinder$1;->val$familyToFontListMap:Ljava/util/HashMap;

    move-object v15, v7

    move-object/from16 v16, v13

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 180
    :cond_2
    move-object v14, v13

    move-object v15, v10

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 181
    add-int/lit8 v6, v6, 0x1

    .line 182
    goto/16 :goto_1

    .line 183
    .end local v9    # "file":Ljava/lang/String;
    .end local v10    # "fullName":Ljava/lang/String;
    .end local v11    # "fullFile":Ljava/lang/String;
    .end local v12    # "f":Ljava/io/File;
    .end local v13    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    goto/16 :goto_0

    .line 184
    .end local v5    # "family":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "familyName":Ljava/lang/String;
    :cond_4
    move-object v14, v0

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/sun/javafx/font/AndroidFontFinder$1;->inFamily:Z

    .line 194
    :cond_5
    :goto_2
    return-void

    .line 185
    :cond_6
    move-object v14, v3

    const-string v15, "nameset"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 186
    move-object v14, v0

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/sun/javafx/font/AndroidFontFinder$1;->inNameset:Z

    goto :goto_2

    .line 187
    :cond_7
    move-object v14, v3

    const-string v15, "fileset"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 188
    move-object v14, v0

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/sun/javafx/font/AndroidFontFinder$1;->inFileset:Z

    goto :goto_2

    .line 189
    :cond_8
    move-object v14, v3

    const-string v15, "name"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 190
    move-object v14, v0

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/sun/javafx/font/AndroidFontFinder$1;->inName:Z

    goto :goto_2

    .line 191
    :cond_9
    move-object v14, v3

    const-string v15, "file"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 192
    move-object v14, v0

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/sun/javafx/font/AndroidFontFinder$1;->inFile:Z

    goto :goto_2
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/AndroidFontFinder$1;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "qName":Ljava/lang/String;
    move-object v4, p4

    .local v4, "attributes":Lorg/xml/sax/Attributes;
    move-object v5, v3

    const-string v6, "family"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 201
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sun/javafx/font/AndroidFontFinder$1;->inFamily:Z

    .line 202
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/font/AndroidFontFinder$1;->namesets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 203
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/font/AndroidFontFinder$1;->filesets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    move-object v5, v3

    const-string v6, "nameset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 205
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sun/javafx/font/AndroidFontFinder$1;->inNameset:Z

    goto :goto_0

    .line 206
    :cond_2
    move-object v5, v3

    const-string v6, "fileset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 207
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sun/javafx/font/AndroidFontFinder$1;->inFileset:Z

    goto :goto_0

    .line 208
    :cond_3
    move-object v5, v3

    const-string v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 209
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sun/javafx/font/AndroidFontFinder$1;->inName:Z

    goto :goto_0

    .line 210
    :cond_4
    move-object v5, v3

    const-string v6, "file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 211
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sun/javafx/font/AndroidFontFinder$1;->inFile:Z

    goto :goto_0
.end method
