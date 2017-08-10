package org.project_osrm.instructions;

import com.google.gson.JsonParser;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Paths;

import static org.junit.Assert.assertEquals;

public class BaseTest {
  public static final double DELTA = 1E-10;

  protected String loadJsonFixture(String filename) throws IOException {
    InputStream stream = getClass().getClassLoader().getResourceAsStream(filename);
    return new JsonParser().parse(new InputStreamReader(stream)).getAsJsonObject().toString();
  }
}
